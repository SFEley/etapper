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
def client
  Etapper.client
end

Spec::Runner.configure do |config|
  config.mock_with :mocha
  
  config.include(MockDriver) unless Spec::TEST_LIVE
  config.before(:each) do
    client.username = 'etapper_johntest'
    client.password = 'mypass'
  end
end

