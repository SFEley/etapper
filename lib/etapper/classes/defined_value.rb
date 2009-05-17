require 'rubygems'
require 'active_support'

module Etapper
  class DefinedValue
    extend Forwardable
    
    DATA_TYPE = {
      :text => 0,
      :date => 1,
      :month_and_day => 2,
      :number => 3,
      :currency => 4
    }
    
    DISPLAY_TYPE = {
      :text => 0,
      :single_select => 1,
      :multi_select => 2,
      :text_area => 3
    }

    def_delegators :@base, 
                   :dataType,
                   :displayType,
                   :fieldName,
                   :fieldRef,
                   :value,
                   :valueRef

# Takes a hash specifying a field name and its value.  Also allows :data_type and :display_type as hash keys.
    def initialize(params = {})
      # Order of parameters from API:
      # {etapestryAPI/service}DefinedValue
      #   dataType - SOAP::SOAPInt
      #   displayType - SOAP::SOAPInt
      #   fieldName - SOAP::SOAPString
      #   fieldRef - SOAP::SOAPString
      #   value - SOAP::SOAPString
      #   valueRef - SOAP::SOAPString
      
      display_type = DISPLAY_TYPE[params.delete(:display_type)]
      data_type = DATA_TYPE[params.delete(:data_type)]
      # Check our parameters
      raise Etapper::BadValueError("Only one field value can be provided") if params.size != 1
      fieldname = params.keys.first
      fieldname = fieldname.to_s.titleize if fieldname.is_a?(Symbol)
      value = params[fieldname]
      @base = Etapper::API::DefinedValue.new(data_type, display_type, fieldname, nil, value, nil)
    end
  end
end