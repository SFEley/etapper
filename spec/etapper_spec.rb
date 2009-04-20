require File.dirname(__FILE__) + '/spec_helper.rb'

# Time to add your specs!
# http://rspec.info/
describe "ETapper Client" do
  it "exists" do
    client.should be_an(Etapper::Client)
  end  
  
  it "knows where to connect" do
    client.endpoint_url.should == Spec::TEST_URL
  end
end
