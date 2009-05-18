require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Duplicate Account Search" do
  it "allows a name" do
    d = Etapper::DuplicateAccountSearch.new(:name => "John Smith")
    d.name.should == "John Smith"
  end
  
  it "allows a phone number" do
    d = Etapper::DuplicateAccountSearch.new(:phone => "404-727-7972")
    d.phoneNumber.should == "404-727-7972"
  end
  
  it "allows an address" do
    d = Etapper::DuplicateAccountSearch.new(:address => "825 Houston Mill Rd NE Suite 300")
    d.address.should == "825 Houston Mill Rd NE Suite 300"
  end
  
  it "allows an email address" do
    d = Etapper::DuplicateAccountSearch.new(:email => "seley@aarweb.org")
    d.email.should == "seley@aarweb.org"
  end
  
  it "raises an exception if none of the above are provided" do
    lambda {d = Etapper::DuplicateAccountSearch.new}.should raise_error(Etapper::BadValueError)
  end
  
  it "allows setting allowEmailOnlyMatch" do
    d = Etapper::DuplicateAccountSearch.new(:email => "seley@aarweb.org", :name => "Steve Eley", :allow_email_only_match => false)
    d.allowEmailOnlyMatch.should be_false    
  end
  
  it "defaults allowEmailOnlyMatch to true if an email is provided" do
    d = Etapper::DuplicateAccountSearch.new(:email => "seley@aarweb.org", :name => "Steve Eley")
    d.allowEmailOnlyMatch.should be_true
  end
  
  it "defaults allowEmailOnlyMatch to false if an email is not provided" do
    d = Etapper::DuplicateAccountSearch.new(:name => "Steve Eley", :phone => "404-727-7972")
    d.allowEmailOnlyMatch.should be_false
  end
  
  it "allows setting accountRoleTypes" do
    d = Etapper::DuplicateAccountSearch.new(:email => "seley@aarweb.org", :account_role_types => :tributes_only)
    d.accountRoleTypes.should == 2    
  end

  it "sets accountRoleTypes to donors only by default" do
    d = Etapper::DuplicateAccountSearch.new(:phone => "404-727-7972")
    d.accountRoleTypes.should == 1
  end
end