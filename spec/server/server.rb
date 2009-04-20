#!/usr/bin/env ruby
LIBDIR = File.join(File.dirname(__FILE__), '../..', 'lib')
$:.unshift(File.dirname(__FILE__)) unless
$:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
$:.unshift(LIBDIR) unless
$:.include?(LIBDIR) || $:.include?(LIBDIR)

require 'rubygems'
gem 'soap4r'
require 'etapper'
require 'serverMethods'
require 'soap/rpc/standaloneServer'

module Etapper
  module Test
    class Server < ::SOAP::RPC::StandaloneServer

      def initialize(args = {})
        options = {
          :app => 'EtapperTestServer',
          :host => 'localhost',
          :port => 10080,
          #      :logfile => File.join(File.dirname(__FILE__), '..', '..', 'tmp', 'server.log')
        }.merge(args)

        super(options[:app], ETAP_NS, options[:host], options[:port])

        # Set log level a lot more verbose
        self.level = Logger::Severity::INFO

        servant = Services.new
        Services::Methods.each do |definitions|
          opt = definitions.last
          if opt[:request_style] == :document
            @router.add_document_operation(servant, *definitions)
          else
            @router.add_rpc_operation(servant, *definitions)
          end
        end
        self.mapping_registry = API::ServiceMappingRegistry::EncodedRegistry
        self.literal_mapping_registry = API::ServiceMappingRegistry::LiteralRegistry
        self.log = options[:logfile] if options[:logfile]
      end

      def self.launch(args = {})
        server = Server.new(args)

        trap(:INT) do
          server.shutdown
        end
        server.start
      end
    end
  end
end

if $0 == __FILE__
  Etapper::Test::Server.launch
end
