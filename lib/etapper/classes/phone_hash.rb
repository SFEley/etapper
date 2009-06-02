require 'etapper/classes/etap_hash'
require 'etapper/classes/phone'

module Etapper
  class PhoneHash < EtapHash
    def initialize(array_from_api)
      super(array_from_api, Phone, :type, :number)
    end
  end
end