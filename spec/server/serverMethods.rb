require 'etapper/etap'
require 'serverPending' # Methods still not implemented
require 'serverHeaders' # WSDL headers

module Etapper

  class Services

    # LOGIN
    #   login(username, password)
    #
    # ARGS
    #   username        C_String - {http://www.w3.org/2001/XMLSchema}string
    #   password        C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # RETURNS
    #   endpoint          C_String - {http://www.w3.org/2001/XMLSchema}string
    #
    # TESTING:
    # * login('etapper_johntest','mypass') returns success (empty endpoint)
    # * login('etapper_jilltest','anotherpass') returns endpoint to '127.0.0.1:10010' if called from elsewhere; otherwise success
    # * login('etapper_carltest','anotherpass') returns Account Password Expired
    # * login('etapper_fredtest','athirdpass') returns Account Locked Out
    # * login('etapper_saratest','fourthpass') returns Invalid License
    # * Anything else should return Invalid Login
    def login(username, password)
      @log.info 'login', "username: #{username}, password: #{password}"

      case username
      when 'johntest'
        return '' if password == 'mypass'
      when 'jilltest'


      end

    end



  end
end
