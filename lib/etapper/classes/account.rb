module Etapper
  class Account 
    extend Forwardable
    
    DONOR_RECOGNITION_TYPES = [
      :donor_name,
      :do_not_recognize,
      :anonymous,
      :recognition_name
      ]
    
    ACCOUNT_ROLE_TYPES = [
      :donor,
      :tribute,
      :user
      ]
        
    def_delegators :@base,
                   :id,
                   :ref,
                   :name, :name=,
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
                   :donorRoleRef,
                   :tributeRoleRef,
                   :userRoleRef
    
    def initialize(base = nil)
      @new = !base
      @base = base || Etapper::API::Account.new
    end
    
    def base
      @base
    end
    
    def phones
      @base.phones ||= Etapper::API::ArrayOfPhone.new
      @phones ||= Etapper::PhoneHash.new(base.phones)
    end
    

    def phone
      phones[:voice] || phones[:business] || phones[:mobile] || phones[:home]
    end
    
    def phone=(val)
      phones[:voice] = val
    end
    
    def fax
      phones[:fax]
    end
    
    def fax=(val)
      phones[:fax] = val
    end
    
    def personaDefinedValues
      @base.personaDefinedValues ||= Etapper::API::ArrayOfDefinedValue.new
      @personaDefinedValues ||= Etapper::DefinedValueHash.new(base.personaDefinedValues)
    end
    
    def accountDefinedValues
      @base.accountDefinedValues ||= Etapper::API::ArrayOfDefinedValue.new
      @accountDefinedValues ||= Etapper::DefinedValueHash.new(base.accountDefinedValues)
    end
    
    def definedValues
      @definedValues = accountDefinedValues.merge(personaDefinedValues)
    end
    
    def donorRecognitionType
      DONOR_RECOGNITION_TYPES[@base.donorRecognitionType]
    end

    def donorRecognitionType=(val)
      @base.donorRecognitionType = DONOR_RECOGNITION_TYPES.index(val)
    end
    
    def accountRoleType
      ACCOUNT_ROLE_TYPES[@base.accountRoleType]
    end
    
    def accountRoleType=(val)
      @base.accountRoleType = ACCOUNT_ROLE_TYPES.index(val)
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

    # Raise an exception.  Only eTapestry gets to set the reference.
    def donorRoleRef=(val)
      raise Etapper::ReadOnlyError, "Account Donor Role Ref is read-only!"
    end

    # Raise an exception.  Only eTapestry gets to set the reference.
    def tributeRoleRef=(val)
      raise Etapper::ReadOnlyError, "Account Tribute Role Ref is read-only!"
    end

    # Raise an exception.  Only eTapestry gets to set the reference.
    def userRoleRef=(val)
      raise Etapper::ReadOnlyError, "Account User Role Ref is read-only!"
    end
    
    def new?
      @new
    end
    
    def save
      Etapper::API::updateAccount(base)
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