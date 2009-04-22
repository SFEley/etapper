require 'rubygems'
gem 'rspec'
require 'spec'

gem 'mocha'
require 'mocha'

class TestError < StandardError; end

$:.unshift(File.dirname(__FILE__) + '/../lib')
$:.unshift(File.dirname(__FILE__))

require 'etapper'
require 'stub_driver'

if ENV["ETAPPER_LIVE"] == 'true' then
  Spec::TEST_LIVE = true
  Spec::TEST_URL = Etapper::ETAP_URL
else
  Spec::TEST_LIVE = false
  Spec::TEST_URL = '### ORIGINAL URL ###'
end

# Take our toys out of the toybox
Spec::Runner.configure do |config|
  config.mock_with :mocha
  # Configure our mocking framework to complain about things we don't like
  Mocha::Configuration.prevent :stubbing_non_existent_method
  Mocha::Configuration.warn_when :stubbing_method_unnecessarily
  
  config.include(MockDriver) unless Spec::TEST_LIVE
end

def client
  @client
end
