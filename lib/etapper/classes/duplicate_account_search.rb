module Etapper
  # Wraps the eTapestry API "DuplicateAccountSearch" complex type with something easier to use.
  class DuplicateAccountSearch
    extend Forwardable
    
    ACCOUNT_ROLE_TYPES = {
      :donors_and_tributes => 0,
      :donors_only => 1,
      :tributes_only => 2
    }
    
    def_delegators :@base, 
                   :name,
                   :address,
                   :email,
                   :phoneNumber,
                   :accountRoleTypes,
                   :allowEmailOnlyMatch
    
    # Takes a hash specifying values. At least one of :name, :address, :email or :phone must be provided.
    # allowEmailOnlyMatch defaults to true if an email is given; false otherwise.
    # accountRoleTypes defaults to :donors_only if not provided.
    def initialize(params = {})
      name, address, phone, email = params.values_at(:name, :address, :phone, :email)
      if params.has_key?(:allow_email_only_match)
        emailOnly = params[:allow_email_only_match]
      else
        emailOnly = !!email
      end
      roleTypes = ACCOUNT_ROLE_TYPES[params[:account_role_types]] || ACCOUNT_ROLE_TYPES[:donors_only]
      
      # Check our parameters
      raise Etapper::BadValueError, "You must supply at least one search field!" unless (name || address || phone || email)
      
      # {etapestryAPI/service}DuplicateAccountSearch
      #   accountRoleTypes - SOAP::SOAPInt
      #   address - SOAP::SOAPString
      #   allowEmailOnlyMatch - SOAP::SOAPBoolean
      #   email - SOAP::SOAPString
      #   name - SOAP::SOAPString
      #   phoneNumber - SOAP::SOAPString
      @base = Etapper::API::DuplicateAccountSearch.new(roleTypes, address, emailOnly, email, name, phone)
    end 
  end
end