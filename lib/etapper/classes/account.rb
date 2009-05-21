

module Etapper
  class Account 
    extend Forwardable
    
    def_delegators :@base,
                   :id,
                   :ref,
                   :name,
                   :sortName,
                   :title,
                   :firstName,
                   :middleName,
                   :lastName,
                   :personaType,
                   :personaTypes,
                   :primaryPersona,
                   :address,
                   :city,
                   :state,
                   :postalCode,
                   :county,
                   :country,
                   :shortSalutation,
                   :longSalutation,
                   :email,
                   :webAddress,
                   :note,
                   :donorRecognitionName,
                   :donorRecognitionType,
                   :accountRoleType,
                   :donorRoleRef,
                   :tributeRoleRef,
                   :userRoleRef
    
    def initialize(base)
      @base = base || Etapper::API::Account.new
    end
    
    def phones
      @phones ||= hashify(:phones, Etapper::Phone)
    end
    
    def phone
      phones[:voice] || phones[:business] || phones[:mobile] || phones[:home]
    end
    
    def fax
      phones[:fax]
    end
    
    def personaDefinedValues
      @personaDefinedValues ||= hashify(:personaDefinedValues, Etapper::DefinedValue)
    end
    
    def accountDefinedValues
      @accountDefinedValues ||= hashify(:accountDefinedValues, Etapper::DefinedValue)
    end
    
    def definedValues
      @definedValues ||= personaDefinedValues.merge(accountDefinedValues)
    end
    
    def method_missing(attribute, *args)
      # Try to get it from the defined values hash first
      definedValues[attribute] or super(attribute, *args)
    end
    
    private
    def hashify(attribute, klass)
      hash ||= {}
      @base.send(attribute).each do |api_thing|
        thing = klass.new(api_thing)
        hash = thing.append_to_hash(hash)
      end
      hash
    end

      
      
  end
end