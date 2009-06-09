require 'etapper/api/driver'
require 'forwardable'
require 'uri'
require 'singleton'
require 'etapper/core_ext/string'
require 'etapper/core_ext/symbol'

module Etapper
  
  # Load our class wrappers (Account, Defined Value, etc.)
  Dir[File.dirname(__FILE__) + "/classes/*.rb"].sort.each do |path|
    filename = File.basename(path, '.rb')
    require "etapper/classes/#{filename}"
  end
  
  # Set some exception types
  class BadValueError < StandardError; end
  class ReadOnlyError < StandardError; end
  class ConnectionError < StandardError; end

  class Client
    extend Forwardable
    include Singleton
    
    attr_accessor :autoconnect
    
    # Some of our methods are really at the driver level
    def_delegator :@driver, :endpoint_url, :url
    def_delegator :@driver, :endpoint_url=, :url=
    
    def initialize
      @driver = API::Driver.new
      self.url = Etapper::ETAP_URL   # 'nil' is a valid value
      @autoconnect = true
      @username = nil
      @password = nil      
      @connected = false
    end
    
    def username
      @username
    end
    
    def username=(val)
      @username = val
      disconnect
    end
    
    def password=(val)
      @password = val
      disconnect
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
        raise ConnectionError, "Username is required!" unless @username
        raise ConnectionError, "Password is required!" unless @password
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
      driver.logout if connected?
      @connected = false
      true
    end
    
    # Our primary proxy. Sends anything we don't know about to the driver for processing.
    def method_missing(method, *params)
      raise NoMethodError if method == :driver  # This is protected for a reason
      unless connected?
        if autoconnect
          connect
        else
          raise ConnectionError, "Autoconnect is disabled! Use the 'connect' method before making any API calls."
        end
      end
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
        a = getAccountById(query)
      elsif query =~ /\d+\.\d+\.\d+/  # "4310.0.2276679"
        a = getAccount(query)
      elsif query =~ /\S+@\S+\.\S+/  # very simplistic e-mail checking but suffices for this purpose
        s = DuplicateAccountSearch.new(:email => query)
        a = getDuplicateAccount(s.base)
      elsif query.is_a?(Hash)
        v = DefinedValue.new(query)
        r = getAccountRef(v.base)
        a = getAccount(r)
      else
        a = nil
      end
      if a
        Account.new(a)
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