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

# Set up some logging, since clients and servers running over each other is confusing
logdir = File.join(File.dirname(__FILE__), '..', 'tmp')
clientlog = File.join(logdir,'client.log')
serverlog = File.join(logdir,'server.log')

File.delete(clientlog) if File.exists?(clientlog)
File.delete(serverlog) if File.exists?(serverlog)

# Take our toys out of the toybox
attr_reader :client, :server

Spec::Runner.configure do |config|
  config.before(:all) do
    if ENV["ETAPPER_LIVE"] = 'true' then
      # Hit eTapestry's live environment -- handle with care!
      @client = Etapper::Client.new(Etapper::ETAPESTRY_URL)
      @client.wiredump_dev = clientlog
    else
      @server = Etapper::Server.new(:logfile => serverlog)
      @server.start
      @client = Etapper::Client.new('http://localhost:10080')
      @client.wiredump_dev = clientlog
      puts "Wait a moment..."
      sleep 2
    end
  end
end
