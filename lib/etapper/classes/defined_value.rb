require 'etapper/classes/hashable'
module Etapper
  # Wraps the eTapestry API "DefinedValue" complex type with something easier to use.
  class DefinedValue
    extend Forwardable
    include Hashable
    
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
                   :dataType,:dataType=,
                   :displayType,:displayType=,
                   :fieldName, :fieldName=,
                   :fieldRef,
                   :value,:value=,
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
      if params.kind_of?(Etapper::API::DefinedValue)
        @base = params
      else
        display_type = DISPLAY_TYPE[params.delete(:display_type)]
        data_type = DATA_TYPE[params.delete(:data_type)]
        fieldname = params.delete(:fieldName)
        fieldref = params.delete(:fieldRef)
        value = params.delete(:value)
        valueRef = params.delete(:valueRef)
        
        unless (fieldname and value)
          if params.size == 1
            fieldname = params.keys.first
            value = params[fieldname]
          else
            raise Etapper::BadValueError, "Only one field value can be provided; instead got #{params.size} (#{params.keys.to_s})"
          end
        end
        fieldname = fieldname.titleize if fieldname.is_a?(Symbol)          
        @base = Etapper::API::DefinedValue.new(data_type, display_type, fieldname, nil, value, nil)
      end
    end
    
    def base
      @base
    end
    
    def key
      fieldName.symbolize
    end
    
    def key=(val)
      fieldName = val.titleize
    end
    
  end
end