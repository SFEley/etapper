require File.dirname(__FILE__) + '/spec_helper.rb'

# Time to add your specs!
# http://rspec.info/
describe "Bare client" do
  before(:each) do
    @client = Etapper::Client.new
  end

  it "exists" do
    @client.should be_an(Etapper::Client)
  end  
  
  it "knows where to connect" do
    @dummy.expects(:endpoint_url).returns(Spec::TEST_URL)
    @client.url.should == Spec::TEST_URL
  end
  
  it "knows its username" do
    @client.username = 'johntest'
    @client.username.should == 'johntest'
  end
  
  it "lets you set a password" do
    lambda{@client.password = 'mypass'}.should_not raise_error
  end
  
  it "doesn't let you read the password" do
    @client.should_not respond_to(:password)
  end
  
  it "keeps its driver hidden" do
    lambda {@client.driver}.should raise_error(NoMethodError)
  end
  
  it "knows it isn't connected" do
    @client.should_not be_connected
  end
end
