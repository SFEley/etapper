require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Authentication" do
  before(:each) do
    client.disconnect
  end
  
  describe "username/password setting" do
    before(:each) do
      client.instance_variable_set(:@username, nil)
      client.instance_variable_set(:@password, nil)
    end
    describe "from environment variables" do
      it "uses ETAPPER_USERNAME if the username isn't supplied" do
        ENV.expects(:[]).with('ETAPPER_USERNAME').returns('yoo')
        client.username.should == 'yoo'
      end
      it "uses ETAPPER_PASSWORD if the password isn't supplied" do
        ENV.expects(:[]).with('ETAPPER_PASSWORD').returns('yar')
        client.password.should == 'yar'
      end
    end
    describe "from .etapper/config.yml" do
      before(:each) do
        ENV.stubs(:[]).returns(nil)
        File.stubs(:exists?).returns(true)
        YAML.stubs(:load_file).returns({'username' => 'foo', 'password' => 'bar'})
      end
      it "does not load the YAML file if it has what it needs from environment variables" do
        YAML.expects(:load_file).never
        ENV.expects(:[]).with('ETAPPER_USERNAME').returns('hoo')
        client.username.should == 'hoo'
      end
      
      it "loads the YAML file when environment variables and overrides aren't supplied" do
        YAML.expects(:load_file).returns({'username' => 'floo'})
        client.username.should == 'floo'
      end
      
      it "returns nil when the YAML file doesn't exist" do
        File.expects(:exists?).returns(false)
        client.username.should be_nil
      end
      
      it 'supplies "username" as a last resort' do
        client.username.should == 'foo'
      end
      
      it 'supplies "password" as a last resort' do
        client.password.should == 'bar'
      end
    end
    
    describe "manually from code" do
      it 'allows the username to be set to anything' do
        client.username = 'blobbo'
        client.username.should == 'blobbo'
      end
      it 'allows the password to be set to anything' do
        client.password = 'hoodoo'
        client.password.should == 'hoodoo'
      end
    end
    
    # Clean up our mess for subsequent tests
    after(:each) do
      client.instance_variable_set(:@username, nil)
      client.instance_variable_set(:@password, nil)
      client.instance_variable_set(:@config_file, nil)
    end
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
    client.expects(:username).returns(nil)
    lambda {client.fakeMethod}.should raise_error(Etapper::ConnectionError, "Username is required!")
  end

  it "doesn't try to connect without a password" do
    client.expects(:password).returns(nil)
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