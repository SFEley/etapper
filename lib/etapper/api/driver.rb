require 'soap/rpc/driver'
require 'etapper/api/classes'
require 'etapper/api/mapping_registry'
require 'etapper/api/session'
require 'etapper/soap/generator'
require 'etapper/api/methods'

module Etapper
  module API
    DefaultEndpointUrl = ETAP_URL

    class Driver < ::SOAP::RPC::Driver
      
      def initialize(endpoint_url = nil)
        endpoint_url ||= DefaultEndpointUrl
        super(endpoint_url, nil)
        self.mapping_registry = ServiceMappingRegistry::EncodedRegistry
        self.literal_mapping_registry = ServiceMappingRegistry::LiteralRegistry
        self.streamhandler.filterchain << SessionFilter.new
        self.options['soap.envelope.no_indent'] = true
        init_methods
      end

      private

        def init_methods
          Methods.each do |definitions|
            opt = definitions.last
            if opt[:request_style] == :document
              add_document_operation(*definitions)
            else
              add_rpc_operation(*definitions)
              qname = definitions[0]
              name = definitions[2]
              if qname.name != name and qname.name.capitalize == name.capitalize
                ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
                  __send__(name, *arg)
                end
              end
            end
          end
        end
    end

  end
end
