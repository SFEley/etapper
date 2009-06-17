module Etapper
  class Gift < EtapAbstract
    def definedValues
      @base.definedValues ||= Etapper::API::ArrayOfDefinedValue.new
      @definedValues ||= Etapper::DefinedValueHash.new(base.definedValues)
    end
    
    # Manually setting 'type' because it's a standard method in Ruby
    def type
      @base.type
    end
    
  end
end