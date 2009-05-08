require 'yaml'
require 'soap/soap'  # For the faults

# Passes for a SOAP fault so that we can raise them properly
class MockFault < ::SOAP::FaultError
  Faults = YAML.load_file(File.join(File.dirname(__FILE__), '..', 'doc', 'faults.yml'))
  
  class BabyFault
    attr_accessor :faultcode, :faultstring, :faultactor, :detail
    def initialize(code, string)
      @faultcode = code
      @faultstring = string
    end
  end
  
  def initialize(message)
    lookup = Faults.fetch(message)  # Will throw an IndexError if the message can't be found
    f = BabyFault.new(lookup[:faultcode], lookup[:faultstring])
    super(f)
  end
end


share_as :MockDriver do
  
  # Returns an exception object -- which should be a SOAP fault if we recognize the description string
  before(:each) do
    @dummy = stub('driver') do  
    #   stubs(:endpoint_url).returns('### ORIGINAL URL ###')
    #   # Our good and bad logins
      stubs(:login).with('etapper_johntest','mypass').returns('')
      stubs(:login).with('etapper_jilltest','anotherpass').returns('http://redirect.etapestry.com/v2messaging/service?wsdl')
    #   stubs(:login).with('etapper_carltest','anotherpass').raises(MockFault, 'Account Password Expired')
    #   stubs(:login).with('etapper_fredtest','athirdpass').raises(MockFault, 'Account Locked Out')
    #   stubs(:login).with('etapper_saratest','fourthpass').raises(MockFault, 'Invalid License')
    #   stubs(:login).raises(MockFault, "Invalid Login")  # The base behavior
    
      stubs(:endpoint_url=).returns(true)
    end
    # @dummy = mock 'driver'   # A dummy is a mock driver. Get it? Like a crash test dummy? ...Yeah.
    Etapper::API::Driver.stubs(:new).returns(@dummy)
  end
end
