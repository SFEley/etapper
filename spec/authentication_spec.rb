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
  
  describe "without connecting first" do
    before(:each) do
      @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass', :connect => false)
    end
    
  end
end