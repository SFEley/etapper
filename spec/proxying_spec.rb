require File.dirname(__FILE__) + '/spec_helper'

describe "Method Proxying" do
  before(:each) do
    @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass')
  end
  
  it "attempts to call methods on the driver if they aren't defined by the client" do
    @dummy.expects(:blah)
    @client.blah
  end
  
  it "passes any parameters it receives to the driver" do
    @dummy.expects(:blah).with(1, 'yo')
    @client.blah(1, 'yo')
  end
  
  it "tries to connect if it wasn't already" do
    @dummy.stubs(:logout)
    @client.disconnect
    @dummy.expects(:login).returns("")
    @dummy.expects(:blah)
    @client.blah
  end
  
  it "does not try to connect if it was already connected" do
    @dummy.expects(:login).never
    @dummy.expects(:blah)
    @client.blah
  end
    
end