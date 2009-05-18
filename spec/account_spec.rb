require File.dirname(__FILE__) + '/spec_helper.rb'
require 'YAML'

describe "Account" do
  before(:all) do
    @api_accounts = YAML.load_file(File.dirname(__FILE__) + '/fixtures/accounts_api.yml')
    @api_account = @api_accounts['MashalSaif']
  end
  
  before(:each) do
    @dummy.expects(:login).once.returns("")
    @client = Etapper::Client.new(:username => 'etapper_johntest', :password => 'mypass')
  end
  
  describe "class" do
    
    before(:each) do
      @account = Etapper::Account.new(@api_account)
    end
    
    it "knows its id" do
      @account.id.should == 18618
    end
    
    it "knows its ref" do
      @account.ref.should == "4310.0.2276679"
    end
    
  end
  
  describe "retrieval" do
    it "is callable from the client" do
      @client.should respond_to(:account)
    end
    
    it "searches by Account ID if an integer is supplied" do
      @dummy.expects(:getAccountById).returns(@api_account)
      a = @client.account(18618)
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end
    
    it "searches by Account Ref if a dot-separated string is supplied" do
      @dummy.expects(:getAccount).returns(@api_account)
      a = @client.account("1441.0.14026222")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end
    
    it "searches by Duplicate Account if an e-mail address is supplied" do
      @dummy.expects(:getDuplicateAccount).returns(@api_account)
      a = @client.account("mashalsaif@gmail.com")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end
    
    it "searches by Account Ref using defined values if a hash is supplied" do
      @dummy.expects(:getAccountRef).returns("1441.0.14026222")
      @dummy.expects(:getAccount).with("1441.0.14026222").returns(@api_account)
      a = @client.account("Access ID" => "Z32622")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end
    
  end
end