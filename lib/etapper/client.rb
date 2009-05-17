require 'etapper/api/driver'
require 'forwardable'
require 'uri'

module Etapper
  
  # Load our class wrappers (Account, Defined Value, etc.)
  Dir[File.dirname(__FILE__) + "/classes/*.rb"].sort.each do |path|
    filename = File.basename(path, '.rb')
    require "etapper/classes/#{filename}"
  end
  
  # Set some exception types
  class BadValueError < StandardError; end

  class Client
    extend Forwardable
    
    attr_accessor :username
    attr_writer :password
    
    # Some of our methods are really at the driver level
    def_delegator :@driver, :endpoint_url, :url
    def_delegator :@driver, :endpoint_url=, :url=
    
    def initialize(options = {})
      options[:connect] = true unless options.key?(:connect)        # Default to auto-connect 
      options[:url] = Etapper::ETAP_URL unless options.key?(:url)   # 'nil' is a valid value
      @username = options[:username]
      @password = options[:password]
      @driver = API::Driver.new(options[:url])
      @connected = false
      connect if options[:connect] && @username && @password
    end
    

    # Delegates from the driver's annoyingly named wiredump_dev property
    def log
      driver.wiredump_dev
    end
    
    # Delegates to the driver's annoyingly named wiredump_dev property
    def log=(logthing)
      driver.wiredump_dev = logthing
    end
    
    def connected?
      @connected
    end
    
    def connect
      unless connected?
        result = @driver.login(@username, @password)
        if result == ''
          @connected = true
        else  # May need a redirect
          newurl = URI.parse(result)
          newurl.query = nil   # Strip off the '?wsdl' parameter at the end
          driver.endpoint_url = newurl.to_s
          @connected = connect
        end
      end
    end
    
    def disconnect
      if connected?
        driver.logout
        @connected = false
      end
    end
    
    # Our primary proxy. Sends anything we don't know about to the driver for processing.
    def method_missing(method, *params)
      raise NoMethodError if method == :driver  # This is protected for a reason
      connect unless connected?
      driver.send(method, *params)
    end
    
    # Returns an Account object retrieved from eTapestry using the supplied parameter.
    # The exact method used varies by the query parameter type:
    # * INTEGER: getAccountById()
    # * ACCOUNT REF (dot-separated number string): getAccount()
    # * E-MAIL ADDRESS: getDuplicateAccount
    # * HASH: getAccountRef() with defined value, then getAccount() (only the first hash value is used)
    def account(query)
      if query.is_a?(Integer)
        a = driver.getAccountById(query)
      elsif query =~ /\d+\.\d+\.\d+/  # "4310.0.2276679"
        a = driver.getAccount(query)
      elsif query =~ /\S+@\S+\.\S+/  # very simplistic e-mail checking but suffices for this purpose
        s = DuplicateAccountSearch.new(:email => query)
        a = driver.getDuplicateAccount(s)
      elsif query.is_a?(Hash)
        v = DefinedValue.new(query.to_a.first)
        r = driver.getAccountRef(v)
        a = driver.getAccount(r)
      else
        nil
      end
    end
 
  protected
      def driver
        @driver
      end
  end
  
end