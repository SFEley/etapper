require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Authentication" do
  before(:each) do
    client.disconnect
  end
  
  it "knows when it isn't connected" do
    client.should_not be_connected
  end
  
  it "knows when it is connected" do
    client.connect
    client.should be_connected
  end 
  
  it "respects the autoconnect option when false" do
    client.expects(:connect).never
    client.autoconnect = false
    lambda {client.fakeMethod}.should raise_error(Etapper::ConnectionError, "Autoconnect is disabled! Use the 'connect' method before making any API calls.")
  end
  
  it "tries to connect automatically when username/password are specified" do
    client.expects(:connect).once
    client.autoconnect = true
    client.fakeMethod.should be_true
  end
  
  it "doesn't try to connect without a username" do
    client.username = nil
    lambda {client.fakeMethod}.should raise_error(Etapper::ConnectionError, "Username is required!")
  end

  it "doesn't try to connect without a password" do
    client.password = nil
    lambda {client.fakeMethod}.should raise_error(Etapper::ConnectionError, "Password is required!")
  end
  
  it "disconnects if the username gets changed" do
    client.expects(:disconnect).once
    client.username = 'etapper_fake'
    client.should_not be_connected
  end

  it "disconnects if the password gets changed" do
    client.expects(:disconnect).once
    client.password = 'blah'
    client.should_not be_connected
  end
  
  describe "without connecting first" do
    before(:each) do
      @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass', :connect => false)
    end
    
  end
  
  describe "connect method" do
    it "calls login from the driver" do
      @dummy.expects(:login).returns("")
      client.connect
    end
    
    it "redirects if it gets a URL back" do
      @dummy.expects(:login).twice.returns("http://atl.etapestry.com/v2messaging/service?wsdl").then.returns("")
      client.connect
    end
    
    it "bombs out on any failure" do
      @dummy.expects(:login).raises(MockFault, "Account Locked Out")
      lambda{client.connect}.should raise_error
    end
  end
  
  describe "disconnect method" do
    it "does nothing if it isn't connected" do
      @dummy.expects(:logout).never
      client.disconnect
    end
    
    it "logs out if connected" do
      @dummy.expects(:logout).returns(true)
      client.connect
      client.disconnect
    end
    
      
  end
  
  after(:each) do
    client.autoconnect = true
  end
end