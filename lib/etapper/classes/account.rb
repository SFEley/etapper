

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
      unless @phones
        @phones = Hash.new
        @base.phones.each {|p| @phones.update(Etapper::Phone.new(p).to_hash)}
      end
      @phones
    end
    
    def phone
      phones[:voice] || phones[:business] || phones[:mobile] || phones[:home]
    end
    
    def fax
      phones[:fax]
    end
    
    def personaDefinedValues
      unless @personaDefinedValues
        @personaDefinedValues = Hash.new
        @base.personaDefinedValues.each {|dv| @personaDefinedValues.update(Etapper::DefinedValue.new(dv).to_hash)}
      end
      @personaDefinedValues
    end
    
    def accountDefinedValues
      @accountDefinedValues ||= hashify(:accountDefinedValues, Etapper::DefinedValue)
    end
    
    private
    def hashify(attribute, klass)
      hash = Hash.new
      @base.send(attribute).each {|x| hash.update(klass.new(x).to_hash)}
      hash
    end

      
      
  end
end