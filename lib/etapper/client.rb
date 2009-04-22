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
    
    def initialize(endpoint_url = ETAP_URL)
      @driver = API::Driver.new(endpoint_url)
    end

    # Delegates from the driver's annoyingly named wiredump_dev property
    def log
      @driver.wiredump_dev
    end
    
    # Delegates to the driver's annoyingly named wiredump_dev property
    def log=(logthing)
      @driver.wiredump_dev = logthing
    end
    
    protected
      attr_accessor :driver
  end
  
end