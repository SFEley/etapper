begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  gem 'rspec'
  require 'spec'
end

class TestError < StandardError; end

$:.unshift(File.dirname(__FILE__) + '/../lib')
$:.unshift(File.dirname(__FILE__))

require 'etapper'

if ENV["ETAPPER_LIVE"] == 'true' then
  Spec::TEST_LIVE = true
else
  Spec::TEST_LIVE = false
end

# Take our toys out of the toybox
Spec::Runner.configure do |config|
  config.mock_with :mocha
  
  config.before(:all) do
    # Hit eTapestry's live environment -- handle with care!
    @client = Etapper::Client.new
    unless Spec::TEST_LIVE
      require 'stub_driver'
      @client.stubs(:driver).returns(@dummy)
      @client.stubs(:driver=).returns(@dummy)
    end    
  end
end

def client
  @client
end
