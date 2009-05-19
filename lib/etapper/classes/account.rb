

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
    
    
    
    
  end
end