# Configure our mocking framework to complain about things we don't like
# Mocha::Configuration.prevent :stubbing_non_existent_method
# Mocha::Configuration.warn_when :stubbing_method_unnecessarily

require 'yaml'
require 'soap/soap'  # For the faults

module Etapper
  class MockFault  # So we can raise the flags we need to for the SOAP exception
    attr_accessor :faultcode, :faultstring, :faultactor, :detail
  end

  extend Mocha::Standalone
  Dummy = mock('driver') do   # A dummy is a mock driver. Get it? Like a crash test dummy? ...Yeah.
    # Our good and bad logins
    stubs(:login).raises(fault("Invalid Login"))  # The base behavior
    stubs(:login).with('etapper_johntest','mypass').returns('')
    stubs(:login).with('etapper_jilltest','anotherpass').returns('### REDIRECT URL ###')
    stubs(:login).with('etapper_carltest','anotherpass').raises(fault('Account Password Expired'))
    stubs(:login).with('etapper_fredtest','athirdpass').raises(fault('Account Locked Out'))
    stubs(:login).with('etapper_saratest','fourthpass').raises(fault('Invalid License'))
  end

  module StubDriver

    # Returns an exception object -- which should be a SOAP fault if we recognize the description string
    def fault(kind)
      if lookup = Etapper::Faults[kind] then
        f = MockFault.new
        f.faultcode = lookup[:faultCode]
        f.faultstring = lookup[:faultString]
        ::SOAP::FaultError.new(f)
      else
        Etapper::TestError.new("Unknown fault kind: '#{kind}'")
      end
    end
    

    # Overrides the protected 'driver' attribute of the client
    def self.extended(obj)
      obj.stubs(:driver).returns(Dummy)
      obj.stubs(:driver=).returns(Dummy)
    end
  end
end
