require 'etapper/etap'
require 'etapPending' # Methods still not implemented
require 'etapMethods' # WSDL headers

module Etapper

  class MessagingService

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
    # * login('johntest','mypass') returns success (empty endpoint)
    # * login('jilltest','anotherpass') returns endpoint to '127.0.0.1:10010' if called from elsewhere; otherwise success
    # * login('carltest','anotherpass') returns Account Password Expired
    # * login('fredtest','athirdpass') returns Account Locked Out
    # * login('saratest','fourthpass') returns Invalid License
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

