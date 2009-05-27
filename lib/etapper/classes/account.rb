

module Etapper
  class Account 
    extend Forwardable
    
    def_delegators :@base,
                   :id,
                   :ref,
                   :name,
                   :sortName, :sortName=,
                   :title, :title=,
                   :firstName, :firstName=,
                   :middleName, :middleName=,
                   :lastName, :lastName=,
                   :personaType, :personaType=,
                   :personaTypes,
                   :primaryPersona, :primaryPersona=,
                   :address, :address=,
                   :city, :city=,
                   :state, :state=,
                   :postalCode, :postalCode=,
                   :county, :county=,
                   :country, :country=,
                   :shortSalutation, :shortSalutation=,
                   :longSalutation, :longSalutation=,
                   :email, :email=,
                   :webAddress, :webAddress=,
                   :note, :note=,
                   :donorRecognitionName, :donorRecognitionName=,
                   :donorRecognitionType,
                   :accountRoleType,
                   :donorRoleRef,
                   :tributeRoleRef,
                   :userRoleRef
    
    def initialize(base = nil)
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
    
    # Raise an exception.  Only eTapestry gets to set the ID.
    def id=(val)
      raise Etapper::ReadOnlyError, "Account ID is read-only!"
    end

    # Raise an exception.  Only eTapestry gets to set the reference.
    def ref=(val)
      raise Etapper::ReadOnlyError, "Account Ref is read-only!"
    end

    # Raise an exception.  Only eTapestry gets to set the persona types.
    def personaTypes=(val)
      raise Etapper::ReadOnlyError, "Account Persona Type array is read-only!"
    end
    
    private
    def hashify(attribute, klass)
      hash ||= {}
      if base_attribute = @base.send(attribute)
        base_attribute.each do |api_thing|
          thing = klass.new(api_thing)
          hash = thing.append_to_hash(hash)
        end
      end
      hash
    end

      
      
  end
end