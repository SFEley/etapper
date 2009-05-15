require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Authentication" do
  it "respects the :connect option when false" do
    Etapper::Client.any_instance.expects(:connect).never
    @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass', :connect => false)
  end
  
  it "tries to connect automatically when username/password are specified" do
    Etapper::Client.any_instance.expects(:connect)
    @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass')
  end
  
  it "doesn't try to connect without a username" do
    Etapper::Client.any_instance.expects(:connect).never
    @client = Etapper::Client.new(:username => nil, :password => 'mypass')
  end

  it "doesn't try to connect without a password" do
    Etapper::Client.any_instance.expects(:connect).never
    @client = Etapper::Client.new(:username => nil, :password => 'mypass')
  end
  
  describe "without connecting first" do
    before(:each) do
      @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass', :connect => false)
    end
    
    it "knows it isn't connected" do
      @client.should_not be_connected
    end
    
    it "knows it after connecting" do
      @client.connect
      @client.should be_connected
    end 
  end
  
  describe "connect method" do
    def make_client
      @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass')
    end
    
    it "calls login from the driver" do
      @dummy.expects(:login).returns("")
      make_client
    end
    
    it "redirects if it gets a URL back" do
      @dummy.expects(:login).twice.returns("http://atl.etapestry.com/v2messaging/service?wsdl").then.returns("")
      make_client
    end
    
    it "bombs out on any failure" do
      @dummy.expects(:login).raises(MockFault, "Account Locked Out")
      lambda{make_client}.should raise_error
    end
  end
  
  describe "disconnect method" do
    before(:each) do
      @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass')
    end
    
    it "does nothing if it isn't connected" do
      @dummy.expects(:logout).never
      @client.instance_variable_set(:@connected, false)
      @client.disconnect
    end
    
    it "logs out if connected" do
      @dummy.expects(:logout).returns(true)
      @client.disconnect
    end
    
      
  end
end