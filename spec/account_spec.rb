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
    
    it "knows its sort name" do
      @account.sortName.should == "Saif, Mashal"
    end
    
    it "knows its title" do
      @account.title.should == "Ms."
    end
    
    it "knows its first name" do
      @account.firstName.should == "Mashal"
    end
    
    it "knows its middle name" do
      @account.middleName.should == "L."
    end
    
    it "knows its last name" do
      @account.lastName.should == "Saif"
    end
    
    it "knows its persona type" do
      @account.personaType.should == "Business"
    end
    
    it "knows its persona type array" do
      @account.personaTypes.should == ["Business"]
    end
    
    it "knows if this is the primary persona type" do
      @account.primaryPersona.should be_true
    end
    
    it "knows its address" do
      @account.address.should == "852 Louise Circle"
    end
    
    it "knows its city" do
      @account.city.should == "Durham"
    end
    
    it "knows its state" do
      @account.state.should == "NC"
    end
    
    it "knows its postal code" do
      @account.postalCode.should == "27705"
    end
    
    it "knows its county" do
      @account.county.should == "Raleigh"
    end
    
    it "knows its country" do
      @account.country.should == "US"
    end
    
    it "knows its short salutation" do
      @account.shortSalutation.should == "Mashal"
    end
    
    it "knows its long salutation" do
      @account.longSalutation.should == "Ms. Saif"
    end
    
    it "knows its phone number hash" do
      @account.phones.should === {
        :business => "555-777-8888",
        :home => "555-222-3333",
        :mobile => "555-321-5432",
        :fax => "555-987-6543"
      }
    end
    
    it "knows its main phone number (voice or business by default)" do
      @account.phone.should == "555-777-8888"
    end
    
    it "knows its fax" do
      @account.fax.should == "555-987-6543"
    end
    
    it "knows its email address" do
      @account.email.should == "mashalsaif@gmail.com"
    end
    
    it "knows its URL" do
      @account.webAddress.should == "http://yahoo.com"
    end
    
    it "knows its note" do
      @account.note.should == "(test note)"
    end
    
    it "knows its persona values array" do
      @account.personaDefinedValues.should have(3).values
    end
    
    it "maps persona values to fields" do
      @account.envelope_salutation.should == "Ms. Mashal Saif"
      @account.other_sal.should == "Mashal Saif "
      @account.company.should == "Duke University"
    end
    
    it "knows its account values array" do
      @account.accountDefinedValues.should have(9).values
    end
    
    it "maps account values to fields" do
      @account.account_type.should == "Individual"
      @account.region.should == "SE - Southeast"
      @account.expire_date.should == "12/31/2008"
      @account.student_id_on_file.should == "Yes"
      @account.gender.should == "Female"
      @account.membership_type.should == "Student"
      @account.institution.should == "Duke University"
      @account.access_id.should == "Z32622"
    end
    
    it "maps multiple account values to an array" do
      @account.data_source.should == [
          "Advanced Import (3/10/2009 12:38 PM)",
          "Advanced Import (1/14/2009 5:49 PM)",
          "Advanced Import (3/10/2009 12:37 PM)",
          "Advanced Import (3/17/2009 4:26 PM)"
        ]
    end
    it "knows its donor recognition name" do
      @account.donorRecognitionName.should be_nil
    end
    it "knows its donor recognition type" do
      @account.donorRecognitionType.should == 0
    end
    
    it "knows its account role type" do
      @account.accountRoleType.should == 0
    end
    
    it "knows its donor role ref" do
      @account.donorRoleRef.should == "4310.0.2276679"
    end
    
    it "knows its tribute role ref" do
      @account.tributeRoleRef.should be_nil
    end
    
    it "knows its user role ref" do
      @account.userRoleRef.should be_nil
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