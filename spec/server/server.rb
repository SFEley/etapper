#!/usr/bin/env ruby
LIBDIR = File.join(File.dirname(__FILE__), '../..', 'lib')
$:.unshift(File.dirname(__FILE__)) unless
$:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
$:.unshift(LIBDIR) unless
$:.include?(LIBDIR) || $:.include?(LIBDIR)

require 'rubygems'
gem 'soap4r'
require 'serverMethods'
require 'soap/rpc/standaloneServer'

module Etapper

  class Server < ::SOAP::RPC::StandaloneServer

    def initialize(options = {})
      options = {
        :app => 'EtapperTestServer',
        :namespace =>'etapestryAPI/service',
        :host => 'localhost',
        :port => 10080,
        #      :logfile => File.join(File.dirname(__FILE__), '..', '..', 'tmp', 'server.log')
      }.merge(args)

      super(options[:app], options[:namespace], options[:host], options[:port])

      # Set log level a lot more verbose
      self.level = Logger::Severity::INFO

      servant = Etapper::Services.new
      Etapper::Services::Methods.each do |definitions|
        opt = definitions.last
        if opt[:request_style] == :document
          @router.add_document_operation(servant, *definitions)
        else
          @router.add_rpc_operation(servant, *definitions)
        end
      end
      self.mapping_registry = ServiceMappingRegistry::EncodedRegistry
      self.literal_mapping_registry = ServiceMappingRegistry::LiteralRegistry
      self.log = options[:logfile] if options[:logfile]
    end

    def self.launch(args = {})
      server = Etapper::Server.new(options)

      trap(:INT) do
        server.shutdown
      end
      server.start
    end
  end

end


if $0 == __FILE__
  Etapper::Server.launch
end
