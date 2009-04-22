require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Authentication" do
  describe "with valid username" do
    before(:each) do
      client.username = 'etapper_johntest'
      client.password = 'mypass'
    end
    
    it "calls the login method of the server" do
      
      
    end
  end
  
end