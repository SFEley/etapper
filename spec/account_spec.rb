require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Account" do
  before(:each) do
    @dummy.expects(:login).once.returns("")
    @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass')
  end
  
  describe "retrieval" do
    it "is callable from the client" do
      @client.should respond_to(:account)
    end
    
    it "searches by Account ID if an integer is supplied" do
      @dummy.expects(:getAccountById)
      @client.account(18618)
    end
    
    it "searches by Account Ref if a dot-separated string is supplied" do
      @dummy.expects(:getAccount)
      @client.account("1441.0.14026222")
    end
    
    it "searches by Duplicate Account if an e-mail address is supplied" do
      @dummy.expects(:getDuplicateAccount)
      @client.account("mashalsaif@gmail.com")
    end
    
    it "searches by Account Ref using defined values if a hash is supplied" do
      @dummy.expects(:getAccountRef).returns("1441.0.14026222")
      @dummy.expects(:getAccount).with("1441.0.14026222")
      @client.account("Access ID" => "Z32622")
    end
  end
end