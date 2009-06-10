require File.dirname(__FILE__) + '/spec_helper.rb'

# Time to add your specs!
# http://rspec.info/
describe "Bare client" do
  it "exists" do
    client.should be_an(Etapper::Client)
  end  
  
  it "is a singleton" do
    client.should_not respond_to(:new)
  end
  
  it "knows where to connect" do
    @dummy.expects(:endpoint_url).returns(Spec::TEST_URL)
    client.url.should == Spec::TEST_URL
  end
  
  it "knows its username" do
    client.username = 'johntest'
    client.username.should == 'johntest'
  end
  
  it "lets you set a password" do
    lambda{client.password = 'mypass'}.should_not raise_error
  end
  
  it "doesn't let you read the password" do
    client.should_not respond_to(:password)
  end
  
  it "knows if it's connected" do
    client.should respond_to(:connected?)
  end
  
end
