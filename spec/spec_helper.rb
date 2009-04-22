begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  gem 'rspec'
  require 'spec'
end

$:.unshift(File.dirname(__FILE__) + '/../lib')
$:.unshift(File.join(File.dirname(__FILE__), 'server'))
require 'etapper'
require 'server'

if ENV["ETAPPER_LIVE"] == 'true' then
  Spec::TEST_LIVE = true
  Spec::TEST_URL = Etapper::ETAPESTRY_URL
else
  Spec::TEST_LIVE = false
  Spec::TEST_URL = 'http://localhost:10080'
end

# Take our toys out of the toybox
Spec::Runner.configure do |config|
  config.before(:all) do
    # Set up some logging, since clients and servers running over each other is confusing
    logdir = File.join(File.dirname(__FILE__), '..', 'tmp')
    clientlog = File.join(logdir,'client.log')
    serverlog = File.join(logdir,'server.log')

    File.delete(clientlog) if File.exists?(clientlog)
    File.delete(serverlog) if File.exists?(serverlog)

    unless Spec::TEST_LIVE then
      # Start the server in its own thread, or we'll never get back
      @server = Etapper::Test::Server.new(:logfile => serverlog)
      @sthread = Thread.new do 
        @server.start
      end
      puts "Wait a moment..."
      sleep 2
    end

    # Hit eTapestry's live environment -- handle with care!
    @client = Etapper::Client.new(Spec::TEST_URL)
    @client.log = clientlog
  end
  
  config.after(:all) do
    @server.shutdown if @server
    @sthread.join if @sthread
    @client = nil
    @server = nil
  end
end

def client
  @client
end

def server
  @server
end
