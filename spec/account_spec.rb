require File.dirname(__FILE__) + '/spec_helper.rb'
require 'shared_etap_abstract_spec'

describe Etapper::Account do
  before(:all) do
    @api_collection = YAML.load_file(File.dirname(__FILE__) + '/fixtures/accounts_api.yml')
    @api_object = @api_collection['MashalSaif']
  end

  before(:each) do
    @dummy.stubs(:getAccount).with("4310.0.2276679").returns(@api_object)
    @dummy.stubs(:getAccountById).with(18618).returns(@api_object)
    @dummy.stubs(:getDuplicateAccount).with("mashalsaif@gmail.com").returns(@api_object)
    @this = Etapper::Account.new(@api_object)
  end

  @api_methods = %w{
    id
    ref
    name
    sortName
    title
    firstName
    middleName
    lastName
    personaTypes
    personaType
    primaryPersona
    address
    city
    state
    postalCode
    county
    country
    shortSalutation
    longSalutation
    email
    webAddress
    note
    donorRecognitionName
    donorRoleRef
    tributeRoleRef
    userRoleRef
  }
  
  @api_readonly_methods = %w{
    id
    ref
    personaTypes
    donorRoleRef
    tributeRoleRef
    userRoleRef
  }
  
  it_should_behave_like "an Etapper abstract type"
  
  describe "on read" do


    it "knows its phone number hash" do
      @this.phones.should === {
        :business => "555-777-8888",
        :home => "555-222-3333",
        :mobile => "555-321-5432",
        :fax => "555-987-6543"
      }
    end

    it "knows its main phone number (voice or business by default)" do
      @this.phone.should == "555-777-8888"
    end

    it "knows its fax" do
      @this.fax.should == "555-987-6543"
    end

    it "knows its email address" do
      @this.email.should == "mashalsaif@gmail.com"
    end

    it "knows its URL" do
      @this.webAddress.should == "http://yahoo.com"
    end

    it "knows its note" do
      @this.note.should == "(test note)"
    end

    it "knows its persona values" do
      @this.personaDefinedValues.should have(3).values
    end

    it "maps persona values to fields" do
      @this.envelope_salutation.should == "Ms. Mashal Saif"
      @this.other_sal.should == "Mashal Saif "
      @this.company.should == "Duke University"
    end

    it "knows its account values" do
      @this.accountDefinedValues.should have(9).values
    end

    it "maps account values to fields" do
      @this.account_type.should == "Individual"
      @this.region.should == "SE - Southeast"
      @this.expire_date.should == "12/31/2008"
      @this.student_id_on_file.should == "Yes"
      @this.gender.should == "Female"
      @this.membership_type.should == "Student"
      @this.institution.should == "Duke University"
      @this.access_id.should == "Z32622"
    end

    it "has a full values hash with persona and account values" do
      @this.definedValues.should have(12).values
    end

    it "maps multiple account values to an array" do
      @this.data_source.should == [
        "Advanced Import (3/10/2009 12:38 PM)",
        "Advanced Import (1/14/2009 5:49 PM)",
        "Advanced Import (3/10/2009 12:37 PM)",
        "Advanced Import (3/17/2009 4:26 PM)"
      ]
    end
    it "knows its donor recognition name" do
      @this.donorRecognitionName.should be_nil
    end
    it "knows its donor recognition type" do
      @this.donorRecognitionType.should == :donor_name
    end

    it "knows its account role type" do
      @this.accountRoleType.should == :donor
    end

    it "knows its donor role ref" do
      @this.donorRoleRef.should == "4310.0.2276679"
    end

    it "knows its tribute role ref" do
      @this.tributeRoleRef.should be_nil
    end

    it "knows its user role ref" do
      @this.userRoleRef.should be_nil
    end
  end


  describe "on write" do
    before(:each) do
      @this = Etapper::Account.new
    end

    it "knows if it is a new account" do
      @this.should be_new
    end
    
    it "cannot set its id" do
      lambda{@this.id = 18618}.should raise_error Etapper::ReadOnlyError, "Account id is read-only!"
    end

    it "cannot set its ref" do
      lambda{@this.ref = "4310.0.2276679"}.should raise_error Etapper::ReadOnlyError, "Account ref is read-only!"
    end

    it "can set its name" do
      @this.name = "John Smith"
      @this.name.should == "John Smith"
    end

    it "can set its sort name" do
      @this.sortName = "Smith, John"
      @this.sortName.should == "Smith, John"
    end

    it "can set its title" do
      @this.title = "Prof."
      @this.title.should == "Prof."
    end

    it "can set its first name" do
      @this.firstName = "John"
      @this.firstName.should == "John"
    end

    it "can set its middle name" do
      @this.middleName = "W."
      @this.middleName.should == "W."
    end

    it "can set its last name" do
      @this.lastName = "Smith"
      @this.lastName.should == "Smith"
    end

    it "cannot set its persona type array" do
      lambda{@this.personaTypes = ["Personal"]}.should raise_error Etapper::ReadOnlyError, "Account personaTypes is read-only!"
    end

    it "can set its persona type" do
      @this.personaType = "Business"
      @this.personaType.should == "Business"
    end

    it "can set its primary persona flag" do
      @this.primaryPersona = true
      @this.primaryPersona.should be_true
    end

    it "can set its address" do
      @this.address = "525 Test Lane"
      @this.address.should == "525 Test Lane"
    end

    it "can set its city" do
      @this.city = "Testville"
      @this.city.should == "Testville"
    end

    it "can set its state" do
      @this.state = "TN"
      @this.state.should == "TN"
    end

    it "can set its postal code" do
      @this.postalCode = "33333"
      @this.postalCode.should == "33333"
    end

    it "can set its country" do
      @this.country = "UK"
      @this.country.should == "UK"
    end

    it "can set its county" do
      @this.county = "Test County"
      @this.county.should == "Test County"
    end

    it "can set its short salutation" do
      @this.shortSalutation = "Mashal"
      @this.shortSalutation.should == "Mashal"
    end

    it "can set its long salutation" do
      @this.longSalutation = "Ms. Saif"
      @this.longSalutation.should == "Ms. Saif"
    end

    it "can set its email" do
      @this.email = "bob@example.com"
      @this.email.should == "bob@example.com"
    end

    it "can set its URL" do
      @this.webAddress = "http://example.com"
      @this.webAddress.should == "http://example.com"
    end

    it "can set its note" do
      @this.note = "This is just a note."
      @this.note.should == "This is just a note."
    end

    it "can set its donor recognition name" do
      @this.donorRecognitionName = "Dad"
      @this.donorRecognitionName.should == "Dad"
    end

    it "can set its donor recognition type" do
      @this.donorRecognitionType = :anonymous
      @this.donorRecognitionType.should == :anonymous
    end

    it "can set its account role type" do
      @this.accountRoleType = :tribute
      @this.accountRoleType.should == :tribute
    end

    it "cannot set its donor role ref" do
      lambda{@this.donorRoleRef = "4310.0.2276679"}.should raise_error Etapper::ReadOnlyError, "Account donorRoleRef is read-only!"
    end

    it "cannot set its tribute role ref" do
      lambda{@this.tributeRoleRef = "4310.0.2276679"}.should raise_error Etapper::ReadOnlyError, "Account tributeRoleRef is read-only!"
    end

    it "cannot set its user role ref" do
      lambda{@this.userRoleRef = "4310.0.2276679"}.should raise_error Etapper::ReadOnlyError, "Account userRoleRef is read-only!"
    end

    it "can set its main phone number" do
      @this.phone = "555-777-9999"
      @this.phone.should == "555-777-9999"
    end

    it "updates its base phone array when the main phone number is set" do
      @this.phone = "555-777-9999"
      phone = @this.base.phones.first
      phone.type.should == "Voice"
      phone.number.should == "555-777-9999"
    end

    it "can set its fax number" do
      @this.fax = "555-999-8888"
      @this.fax.should == "555-999-8888"
    end
    
    it "updates its base phone array when the fax number is set" do
      @this.fax = "555-999-8888"
      fax = @this.base.phones.last
      fax.type.should == "Fax"
      fax.number.should == "555-999-8888"
    end
    
    it "can set its email address" do
      @this.email = "bob@example.com"
      @this.email.should == "bob@example.com"
    end
    
    it "can set its URL" do
      @this.webAddress = "http://www.example.com"
      @this.webAddress.should == "http://www.example.com"
    end
    
    it "can set its note" do
      @this.note = "The quick brown fox jumped over the lazy dog."
      @this.note.should == "The quick brown fox jumped over the lazy dog."
    end
    
    it "can set its persona values" do
      @this.personaDefinedValues[:foo] = "bar"
      dv = @this.base.personaDefinedValues.last
      dv.fieldName.should == "Foo"
      dv.value.should == "bar"
    end
    
    it "updates the defined values when a persona value is set" do
      @this.personaDefinedValues[:foo] = "bar"
      @this.foo.should == "bar"
    end
    
    it "can set its account values" do
      @this.accountDefinedValues[:foo] = "bar"
      dv = @this.base.accountDefinedValues.last
      dv.fieldName.should == "Foo"
      dv.value.should == "bar"
    end
    
    it "updates the defined values when an account value is set" do
      @this.accountDefinedValues[:foo] = "bar"
      @this.foo.should == "bar"
    end
  
    it "maps multiple account values to an array" do
      @this.accountDefinedValues.add_or_append(:letters, 'A')
      @this.accountDefinedValues.add_or_append(:letters, 'B')
      @this.accountDefinedValues.add_or_append(:letters, 'C')
      
      @this.letters.should == ['A','B','C']
    end
    
    it "does not let you write directly to Defined Values" do
      lambda{@this.definedValues[:yoo] = 'yar'}.should raise_error
    end

    it "can set its donor recognition name" do
      @this.donorRecognitionName = "John Smith"
      @this.donorRecognitionName.should == "John Smith"
    end

    it "can set its donor recognition type" do
      @this.donorRecognitionType = :anonymous
      @this.donorRecognitionType.should == :anonymous
    end
  
    it "can set its account role type" do
      @this.accountRoleType = :donor
      @this.accountRoleType.should == :donor
    end
  
  end

  describe "retrieval" do
    it "implements a 'find' method" do
      Etapper::Account.should respond_to(:find)
    end

    it "searches by Account ID if an integer is supplied" do
      @dummy.expects(:getAccountById).returns(@api_object)
      a = Etapper::Account.find(18618)
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end

    it "searches by Account Ref if a dot-separated string is supplied" do
      @dummy.expects(:getAccount).returns(@api_object)
      a = Etapper::Account.find("1441.0.14026222")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end

    it "searches by Duplicate Account if an e-mail address is supplied" do
      @dummy.expects(:getDuplicateAccount).returns(@api_object)
      a = Etapper::Account.find("mashalsaif@gmail.com")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end

    it "searches by Account Ref using defined values if a hash is supplied" do
      @dummy.expects(:getAccountByUniqueDefinedValue).returns(@api_object)
      a = Etapper::Account.find("Access ID" => "Z32622")
      a.name.should == "Mashal Saif"
      a.should be_a_kind_of(Etapper::Account)
    end
    
    it "knows that this is not a new account" do
      @dummy.stubs(:getAccount).returns(@api_object)
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
