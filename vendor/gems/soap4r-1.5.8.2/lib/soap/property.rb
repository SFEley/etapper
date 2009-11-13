# soap/property.rb: SOAP4R - Property implementation.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.


module SOAP


  # Property stream format:
  #
  #   line separator is \r?\n.  1 line per a property.
  #   line which begins with '#' is a comment line.  empty line is ignored, too.
  #   key/value separator is ':' or '='.
  #   '\' as escape character.  but line separator cannot be escaped.
  #   \s at the head/tail of key/value are trimmed.
  #
  #   '[' + key + ']' indicates property section.  for example,
  #
  #     [aaa.bbb]
  #     ccc = ddd
  #     eee.fff = ggg
  #     []
  #     aaa.hhh = iii
  #
  #   is the same as;
  #
  #     aaa.bbb.ccc = ddd
  #     aaa.bbb.eee.fff = ggg
  #     aaa.hhh = iii
  #
  class Property
    FrozenError = (RUBY_VERSION >= "1.9.0") ? RuntimeError : TypeError

    include Enumerable

    module Util
      def const_from_name(fqname)
        fqname.split("::").inject(Kernel) { |klass, name| klass.const_get(name) }
      end
      module_function :const_from_name

      def require_from_name(fqname)
        require File.join(fqname.split("::").collect { |ele| ele.downcase })
      end
      module_function :require_from_name
    end

    def self.load(stream)
      new.load(stream)
    end

    def self.loadproperty(propname)
      new.loadproperty(propname)
    end

    def initialize
      @store = Hash.new
      @hook = Hash.new
      @self_hook = Array.new
      @locked = false
    end

    KEY_REGSRC = '([^=:\\\\]*(?:\\\\.[^=:\\\\]*)*)'
    DEF_REGSRC = '\\s*' + KEY_REGSRC + '\\s*[=:]\\s*(.*)'
    COMMENT_REGEXP = Regexp.new("^(?:#.*|)$")
    CATDEF_REGEXP = Regexp.new("^\\[\\s*#{KEY_REGSRC}\\s*\\]$")
    LINE_REGEXP = Regexp.new("^#{DEF_REGSRC}$")
    def load(stream)
      key_prefix = ""
      stream.each_line.each_with_index do |line, lineno|
        line.sub!(/\r?\n\z/u, '')
        case line
          when COMMENT_REGEXP
            next
          when CATDEF_REGEXP
            key_prefix = $1.strip
          when LINE_REGEXP
            key, value = $1.strip, $2.strip
            key = "#{key_prefix}.#{key}" unless key_prefix.empty?
            key, value = loadstr(key), loadstr(value)
            self[key] = value
          else
            raise TypeError.new(
            "property format error at line #{lineno + 1}: `#{line}'")
        end
      end
      self
    end

    # find property from $:.
    def loadproperty(propname)
      return loadpropertyfile(propname) if File.file?(propname)
      $:.each do |path|
        if File.file?(file = File.join(path, propname))
          return loadpropertyfile(file)
        end
      end
      nil
    end

    # name: a Symbol, String or an Array
    def [](name)
      referent(name_to_a(name))
    end

    # name: a Symbol, String or an Array
    # value: an Object
    def []=(name, value)
      name_pair = name_to_a(name).freeze
      hooks = assign(name_pair, value)
      hooks.each do |hook|
        hook.call(name_pair, value)
      end
      value
    end

    # value: an Object
    # key is generated by property
    def <<(value)
      self[generate_new_key] = value
    end

    # name: a Symbol, String or an Array; nil means hook to the root
    # cascade: true/false; for cascading hook of sub key
    # hook: block which will be called with 2 args, name and value
    def add_hook(name = nil, cascade = false, &hook)
      if name == nil or name == true or name == false
        cascade = name
        assign_self_hook(cascade, &hook)
      else
        assign_hook(name_to_a(name), cascade, &hook)
      end
    end

    def each
      @store.each do |key, value|
        yield(key, value)
      end
    end

    def empty?
      @store.empty?
    end

    def keys
      @store.keys
    end

    def values
      @store.values
    end

    def lock(cascade = false)
      if cascade
        each_key do |key|
          key.lock(cascade)
        end
      end
      @locked = true
      self
    end

    def unlock(cascade = false)
      @locked = false
      if cascade
        each_key do |key|
          key.unlock(cascade)
        end
      end
      self
    end

    def locked?
      @locked
    end

    protected

      def deref_key(key)
        check_lock(key)
        ref = @store[key] ||= self.class.new
        unless propkey?(ref)
          raise ArgumentError.new("key `#{key}' already defined as a value")
        end
        ref
      end

      def local_referent(key)
        check_lock(key)
        if propkey?(@store[key]) and @store[key].locked?
          raise FrozenError.new("cannot split any key from locked property")
        end
        @store[key]
      end

      def local_assign(key, value)
        check_lock(key)
        if @locked
          if propkey?(value)
            raise FrozenError.new("cannot add any key to locked property")
          elsif propkey?(@store[key])
            raise FrozenError.new("cannot override any key in locked property")
          end
        end
        @store[key] = value
      end

      def local_hook(key, direct)
        hooks = []
        (@self_hook + (@hook[key] || NO_HOOK)).each do |hook, cascade|
          hooks << hook if direct or cascade
        end
        hooks
      end

      def local_assign_hook(key, cascade, &hook)
        check_lock(key)
        @store[key] ||= nil
        (@hook[key] ||= []) << [hook, cascade]
      end

    private

      NO_HOOK = [].freeze

      def referent(ary)
        ary[0..-2].inject(self) { |ref, name|
                                  ref.deref_key(to_key(name))
                                  }.local_referent(to_key(ary.last))
      end

      def assign(ary, value)
        ref = self
        hook = NO_HOOK
        ary[0..-2].each do |name|
          key = to_key(name)
          hook += ref.local_hook(key, false)
          ref = ref.deref_key(key)
        end
        last_key = to_key(ary.last)
        ref.local_assign(last_key, value)
        hook + ref.local_hook(last_key, true)
      end

      def assign_hook(ary, cascade, &hook)
        ary[0..-2].inject(self) { |ref, name|
                                  ref.deref_key(to_key(name))
                                  }.local_assign_hook(to_key(ary.last), cascade, &hook)
      end

      def assign_self_hook(cascade, &hook)
        check_lock(nil)
        @self_hook << [hook, cascade]
      end

      def each_key
        self.each do |key, value|
          if propkey?(value)
            yield(value)
          end
        end
      end

      def check_lock(key)
        if @locked and (key.nil? or !@store.key?(key))
          raise FrozenError.new("cannot add any key to locked property")
        end
      end

      def propkey?(value)
        value.is_a?(::SOAP::Property)
      end

      def name_to_a(name)
        case name
          when Symbol
            [name]
          when String
            name.scan(/[^.\\]+(?:\\.[^.\\])*/u)	# split with unescaped '.'
          when Array
            name
          else
            raise ArgumentError.new("Unknown name #{name}(#{name.class})")
        end
      end

      def to_key(name)
        name.to_s.downcase
      end

      def generate_new_key
        if @store.empty?
          "0"
        else
          (key_max + 1).to_s
        end
      end

      def key_max
        (@store.keys.max { |l, r| l.to_s.to_i <=> r.to_s.to_i }).to_s.to_i
      end

      def loadpropertyfile(file)
        puts "find property at #{file}" if $DEBUG
        File.open(file) do |f|
          load(f)
        end
      end

      def loadstr(str)
        str.gsub(/\\./u) { |c| eval("\"#{c}\"") }
      end
  end


end

