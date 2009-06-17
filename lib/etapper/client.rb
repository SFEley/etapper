require 'etapper/api/serviceDriver'
require 'forwardable'
require 'uri'
require 'singleton'
require 'etapper/core_ext/string'
require 'etapper/core_ext/symbol'
require 'etapper/session_filter'

module Etapper
  class Client
    extend Forwardable
    include Singleton
    
    attr_accessor :autoconnect
    
    # Some of our methods are really at the driver level
    def_delegator :@driver, :endpoint_url, :url
    def_delegator :@driver, :endpoint_url=, :url=
    
    def initialize
      @driver = API::MessagingService.new
      # Set the session handler
      @driver.streamhandler.filterchain << SessionFilter.new
      self.url = Etapper::ETAP_URL   # 'nil' is a valid value
      @autoconnect = true
      @username = nil
      @password = nil      
      @connected = false
    end
    
    def username
      @username ||= ENV['ETAPPER_USERNAME'] || config_file["username"]
    end
    
    def username=(val)
      @username = val
      disconnect
    end
    
    def password
      @password ||= ENV['ETAPPER_PASSWORD'] || config_file["password"]
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
        raise ConnectionError, "Username is required!" unless username
        raise ConnectionError, "Password is required!" unless password
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
 
  protected
    def driver
      @driver
    end
    
    def config_file
      unless @config_file
        location = File.join(Etapper::ETAPPER_DIR, 'config.yml')
        if File.exists?(location)
          @config_file = YAML.load_file(location)
        else
          @config_file = {}
        end
      end
      @config_file
    end
  end
  
  # Returns the Etapper::Class singleton object.
  def self.client
    Client.instance
  end
end