require 'etapper/api/driver'
require 'forwardable'

module Etapper
  class Client
    extend Forwardable
    
    attr_reader :session
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
      connect if options[:connect] && @username && @password
    end

    # Delegates from the driver's annoyingly named wiredump_dev property
    def log
      @driver.wiredump_dev
    end
    
    # Delegates to the driver's annoyingly named wiredump_dev property
    def log=(logthing)
      @driver.wiredump_dev = logthing
    end
    
    def connected?
      false
    end
    
    def connect
      true
    end
    
    protected
      def driver
        @driver
      end
  end
  
end