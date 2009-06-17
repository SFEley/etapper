require 'etapper/classes/etap_abstract'

module Etapper
  class Account < EtapAbstract
    
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
        
    etap_read_only :id,
                   :ref,
                   :userRoleRef,
                   :donorRoleRef,
                   :tributeRoleRef,
                   :accountRef,
                   :personaTypes
    
    # Returns an Account object retrieved from eTapestry using the supplied parameter.
    # The exact method used varies by the query parameter type:
    # * INTEGER: getAccountById()
    # * ACCOUNT REF (dot-separated number string): getAccount()
    # * E-MAIL ADDRESS: getDuplicateAccount
    # * HASH: getAccountRef() with defined value, then getAccount() (only the first hash value is used)
    def self.find(query)
      case query
      when Integer
        a = Etapper::client.getAccountById(query)
      when /\d+\.\d+\.\d+/  # "4310.0.2276679"
        a = client.getAccount(query)
      when /\S+@\S+\.\S+/  # very simplistic e-mail checking but suffices for this purpose
        s = DuplicateAccountSearch.new(:email => query)
        a = Etapper::client.getDuplicateAccount(s.base)
      when Hash
        v = DefinedValue.new(query)
        a = Etapper::client.getAccountByUniqueDefinedValue(v.base)
      end
      Account.new(a) if a
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
      @definedValues = accountDefinedValues.merge(personaDefinedValues).freeze
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
    
     
    # Return the eTapestry account ID
    def id
      base.id
    end
    
      
  end
end