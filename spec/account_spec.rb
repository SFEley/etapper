require File.dirname(__FILE__) + '/spec_helper.rb'
require 'YAML'

describe "Account" do
  before(:all) do
    @api_accounts = YAML.load_file(File.dirname(__FILE__) + '/fixtures/accounts_api.yml')
    @api_account = @api_accounts['MashalSaif']
  end

  before(:each) do
    @dummy.stubs(:getAccount).with("4310.0.2276679").returns(@api_account)
    @dummy.stubs(:getAccountById).with(18618).returns(@api_account)
    @dummy.stubs(:getDuplicateAccount).with("mashalsaif@gmail.com").returns(@api_account)
  end

  describe "on read" do
    before(:each) do
      @account = Etapper::Account.new(@api_account)
    end

    it "can return its base" do
      @account.base.should be_a_kind_of(Etapper::API::Account)
    end

    it "knows its id" do
      @account.id.should == 18618
    end

    it "knows its ref" do
      @account.ref.should == "4310.0.2276679"
    end

    it "knows its name" do
      @account.name.should == "Mashal Saif"
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

    it "knows its persona values" do
      @account.personaDefinedValues.should have(3).values
    end

    it "maps persona values to fields" do
      @account.envelope_salutation.should == "Ms. Mashal Saif"
      @account.other_sal.should == "Mashal Saif "
      @account.company.should == "Duke University"
    end

    it "knows its account values" do
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

    it "has a full values hash with persona and account values" do
      @account.definedValues.should have(12).values
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
      @account.donorRecognitionType.should == :donor_name
    end

    it "knows its account role type" do
      @account.accountRoleType.should == :donor
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


  describe "on write" do
    before(:each) do
      @account = Etapper::Account.new
    end

    it "knows if it is a new account" do
      @account.should be_new
    end
    
    it "cannot set its id" do
      lambda{@account.id = 18618}.should raise_error Etapper::ReadOnlyError, "Account id is read-only!"
    end

    it "cannot set its ref" do
      lambda{@account.ref = "4310.0.2276679"}.should raise_error Etapper::ReadOnlyError, "Account ref is read-only!"
    end

    it "can set its name" do
      @account.name = "John Smith"
      @account.name.should == "John Smith"
    end

    it "can set its sort name" do
      @account.sortName = "Smith, John"
      @account.sortName.should == "Smith, John"
    end

    it "can set its title" do
      @account.title = "Prof."
      @account.title.should == "Prof."
    end

    it "can set its first name" do
      @account.firstName = "John"
      @account.firstName.should == "John"
    end

    it "can set its middle name" do
      @account.middleName = "W."
      @account.middleName.should == "W."
    end

    it "can set its last name" do
      @account.lastName = "Smith"
      @account.lastName.should == "Smith"
    end

    it "cannot set its persona type array" do
      lambda{@account.personaTypes = ["Personal"]}.should raise_error Etapper::ReadOnlyError, "Account personaTypes is read-only!"
    end

    it "can set its persona type" do
      @account.personaType = "Business"
      @account.personaType.should == "Business"
    end

    it "can set its primary persona flag" do
      @account.primaryPersona = true
      @account.primaryPersona.should be_true
    end

    it "can set its address" do
      @account.address = "525 Test Lane"
      @account.address.should == "525 Test Lane"
    end

    it "can set its city" do
      @account.city = "Testville"
      @account.city.should == "Testville"
    end

    it "can set its state" do
      @account.state = "TN"
      @account.state.should == "TN"
    end

    it "can set its postal code" do
      @account.postalCode = "33333"
      @account.postalCode.should == "33333"
    end

    it "can set its country" do
      @account.country = "UK"
      @account.country.should == "UK"
    end

    it "can set its county" do
      @account.county = "Test County"
      @account.county.should == "Test County"
    end

    it "can set its short salutation" do
      @account.shortSalutation = "Mashal"
      @account.shortSalutation.should == "Mashal"
    end

    it "can set its long salutation" do
      @account.longSalutation = "Ms. Saif"
      @account.longSalutation.should == "Ms. Saif"
    end

    it "can set its email" do
      @account.email = "bob@example.com"
      @account.email.should == "bob@example.com"
    end

    it "can set its URL" do
      @account.webAddress = "http://example.com"
      @account.webAddress.should == "http://example.com"
    end

    it "can set its note" do
      @account.note = "This is just a note."
      @account.note.should == "This is just a note."
    end

    it "can set its donor recognition name" do
      @account.donorRecognitionName = "Dad"
      @account.donorRecognitionName.should == "Dad"
    end

    it "can set its donor recognition type" do
      @account.donorRecognitionType = :anonymous
      @account.donorRecognitionType.should == :anonymous
    end

    it "can set its account role type" do
      @account.accountRoleType = :tribute
      @account.accountRoleType.should == :tribute
    end

    it "cannot set its donor role ref" do
      lambda{@account.donorRoleRef = "4310.0.2276679"}.should raise_error Etapper::ReadOnlyError, "Account donorRoleRef is read-only!"
    end

    it "cannot set its tribute role ref" do
      lambda{@account.tributeRoleRef = "4310.0.2276679"}.should raise_error Etapper::ReadOnlyError, "Account tributeRoleRef is read-only!"
    end

    it "cannot set its user role ref" do
      lambda{@account.userRoleRef = "4310.0.2276679"}.should raise_error Etapper::ReadOnlyError, "Account userRoleRef is read-only!"
    end

    it "can set its main phone number" do
      @account.phone = "555-777-9999"
      @account.phone.should == "555-777-9999"
    end

    it "updates its base phone array when the main phone number is set" do
      @account.phone = "555-777-9999"
      phone = @account.base.phones.first
      phone.type.should == "Voice"
      phone.number.should == "555-777-9999"
    end

    it "can set its fax number" do
      @account.fax = "555-999-8888"
      @account.fax.should == "555-999-8888"
    end
    
    it "updates its base phone array when the fax number is set" do
      @account.fax = "555-999-8888"
      fax = @account.base.phones.last
      fax.type.should == "Fax"
      fax.number.should == "555-999-8888"
    end
    
    it "can set its email address" do
      @account.email = "bob@example.com"
      @account.email.should == "bob@example.com"
    end
    
    it "can set its URL" do
      @account.webAddress = "http://www.example.com"
      @account.webAddress.should == "http://www.example.com"
    end
    
    it "can set its note" do
      @account.note = "The quick brown fox jumped over the lazy dog."
      @account.note.should == "The quick brown fox jumped over the lazy dog."
    end
    
    it "can set its persona values" do
      @account.personaDefinedValues[:foo] = "bar"
      dv = @account.base.personaDefinedValues.last
      dv.fieldName.should == "Foo"
      dv.value.should == "bar"
    end
    
    it "updates the defined values when a persona value is set" do
      @account.personaDefinedValues[:foo] = "bar"
      @account.foo.should == "bar"
    end
    
    it "can set its account values" do
      @account.accountDefinedValues[:foo] = "bar"
      dv = @account.base.accountDefinedValues.last
      dv.fieldName.should == "Foo"
      dv.value.should == "bar"
    end
    
    it "updates the defined values when an account value is set" do
      @account.accountDefinedValues[:foo] = "bar"
      @account.foo.should == "bar"
    end
  
    it "maps multiple account values to an array" do
      @account.accountDefinedValues.add_or_append(:letters, 'A')
      @account.accountDefinedValues.add_or_append(:letters, 'B')
      @account.accountDefinedValues.add_or_append(:letters, 'C')
      
      @account.letters.should == ['A','B','C']
    end
    
    it "does not let you write directly to Defined Values" do
      lambda{@account.definedValues[:yoo] = 'yar'}.should raise_error
    end

    it "can set its donor recognition name" do
      @account.donorRecognitionName = "John Smith"
      @account.donorRecognitionName.should == "John Smith"
    end

    it "can set its donor recognition type" do
      @account.donorRecognitionType = :anonymous
      @account.donorRecognitionType.should == :anonymous
    end
  
    it "can set its account role type" do
      @account.accountRoleType = :donor
      @account.accountRoleType.should == :donor
    end
  
  end

  describe "retrieval" do
    it "is callable from the client" do
      Etapper::Account.should respond_to(:find)
    end

    it "searches by Account ID if an integer is supplied" do
      @dummy.expects(:getAccountById).returns(@api_account)
      a = Etapper::Account.find(18618)
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end

    it "searches by Account Ref if a dot-separated string is supplied" do
      @dummy.expects(:getAccount).returns(@api_account)
      a = Etapper::Account.find("1441.0.14026222")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end

    it "searches by Duplicate Account if an e-mail address is supplied" do
      @dummy.expects(:getDuplicateAccount).returns(@api_account)
      a = Etapper::Account.find("mashalsaif@gmail.com")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end

    it "searches by Account Ref using defined values if a hash is supplied" do
      @dummy.expects(:getAccountByUniqueDefinedValue).returns(@api_account)
      a = Etapper::Account.find("Access ID" => "Z32622")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end
    
    it "knows that this is not a new account" do
      @dummy.stubs(:getAccount).returns(@api_account)
      a = Etapper::Account.find("1441.0.14026222")
      a.should_not be_new
    end
  end

  describe "saving" do
    it "calls 'updateAccount' if the account is not new" do
      @dummy.expects(:updateAccount).returns("1441.0.14026222")
      a = Etapper::Account.find(18618)
      a.name = "Bob Test"
      a.save.should == "1441.0.14026222"
    end
    
    it "calls 'addAccount' if the account is new" do
      @dummy.expects(:addAccount).returns("1441.0.14026223")
      a = Etapper::Account.new
      a.name = "Joe Test"
      a.save.should == "1441.0.14026223"
    end
      
  end

end
