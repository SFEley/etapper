require 'etapper/classes/hashable'

module Etapper
  class Phone
    include Hashable
    
    TYPES = [
      :voice,
      :mobile,
      :pager,
      :fax,
      :business,
      :home
      ]
      
                   
    def initialize(params = {})
      if params.kind_of?(Etapper::API::Phone)  # Simply wrap the API object we're given
        @base = params
      else
        raise Etapper::BadValueError, "You must supply a valid type!" unless TYPES.include?(params[:type])
        raise Etapper::BadValueError, "You must supply a phone number!" unless params[:number]
        @base = Etapper::API::Phone.new(params[:number], params[:type].titleize)
      end
    end
    
    def base
      @base
    end
    
    def type
      @base.type
    end
    
    def number
      @base.number
    end
    
    def key
      type.symbolize
    end
    
    def value
      number
    end
  end
end