module Etapper
  class EtapAbstract 
    def self.cname
      self.name.gsub /^(.*::)/,''
    end
    
    def initialize(base = nil)
      @new = !base
      @base = base || eval("Etapper::API::#{self.class.cname}.new")
    end
    
    def base
      @base
    end
    
    # Creates a method that throws an Etapper::ReadOnlyError on attempts to assign that attribute
    def self.etap_read_only(*attributes)
      attributes.each do |attribute|
        att = attribute.to_s
        class_eval <<-ENDDEF
        def #{att}=(val)
          raise Etapper::ReadOnlyError, "#{self.cname} #{att} is read-only!"
        end
        ENDDEF
      end
    end
    
    def method_missing(attribute, *args)
      # Try to get it from the defined values hash first, if one exists
      return definedValues[attribute] if respond_to?(:definedValues) and definedValues.has_key?(attribute)
      
      # Look in the base class next
      return base.send(attribute, *args) if base.respond_to?(attribute)

      # Finally, bubble up
      super(attribute, *args)
    end
       
    def new?
      @new
    end
    
    def save
      if new?
        method = ("add" + self.class.cname).to_sym        
      else
        method = ("update" + self.class.cname).to_sym        
      end
      Client.instance.send(method, base, true)
    end
    
    # Two eTapper classes are the same if they have the same base object
    def ==(val)
      self.base == val.base
    end
       
      
  end
end