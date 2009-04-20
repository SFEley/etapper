require 'etapper/api/driver'
require 'singleton'

module Etapper
  class Client
    include Singleton # There can be only one...
    
    attr_reader :session
    
    def initialize(endpoint_url = nil)
      @driver = API::Driver.new(endpoint_url)
    end
      
    protected
      attr_accessor :driver
  end
  
end