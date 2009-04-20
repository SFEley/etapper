require 'etapper/api/driver'
require 'singleton'

module Etapper
  class Client
    include Singleton # There can be only one...
    
    attr_reader :session
    
    def initialize(endpoint_url = nil)
      @driver = API::Driver.new(endpoint_url)
    end

    def url
      @driver.endpoint_url
    end
    
    def url=(url)
      @driver.endpoint_url = url
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