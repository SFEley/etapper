

module Etapper
  class Account 
    extend Forwardable
    
    def_delegators :@base,
                   :id,
                   :ref,
                   :name
    
    def initialize(base)
      @base = base || Etapper::API::Account.new
    end
    
    
  end
end