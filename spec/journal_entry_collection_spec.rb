require File.dirname(__FILE__) + '/spec_helper.rb'

describe Etapper::JournalEntryCollection do
  before(:each) do
    j = []
    # This fixture file is a collection of 99 journal entries from Emilie Townes.
    File.open(File.dirname(__FILE__) + '/fixtures/journal_entries_api_all.yml') do |file|
      YAML.load_documents(file) do |yaml|
        j << yaml
      end
    end
    @dummy.stubs(:getJournalEntries).returns(j[0],j[1],j[2],j[3],j[4])
    @account_collection = YAML.load_file(File.dirname(__FILE__) + '/fixtures/accounts_api.yml')
    @account = @account_collection['EmilieTownes']
    @this = Etapper::JournalEntryCollection.new(@account, :count => 20)
  end
  
  it "requires an account" do
    lambda{Etapper::JournalEntryCollection.new}.should raise_error(Etapper::RequiredFieldError, "An account is required!")
  end
  
  it "knows its request" do
    @this.request.should be_a_kind_of(Etapper::API::PagedJournalEntriesRequest)
  end
  
  it "can take a type as a symbol" do
    jc = Etapper::JournalEntryCollection.new(@account, :type => :gift)
    jc.request.types.should == [5]
  end
  
  it "can take an array of types" do
    jc = Etapper::JournalEntryCollection.new(@account, :types => [:gift, :contact])
    jc.request.types.should == [5, 2]
  end
  
  it "can take a count of records to retrieve at a time" do
    jc = Etapper::JournalEntryCollection.new(@account, :count => 5)
    jc.request.count.should == 5
  end
  
  it "can take a starting record number" do
    jc = Etapper::JournalEntryCollection.new(@account, :start => 11)
    jc.request.start.should == 11
  end
  
  it "can take a query" do
    jc = Etapper::JournalEntryCollection.new(@account, :baseQuery => "Steve's Queries::Test Journal Entries")
    jc.request.baseQuery.should == "Steve's Queries::Test Journal Entries"
  end
  
  it "can take a start date" do
    jc = Etapper::JournalEntryCollection.new(@account, :startDate => DateTime.parse("1/5/2009 7:59 PM"))
    jc.request.startDate.to_s.should == "2009-05-01"
  end

  it "can take an end date" do
    jc = Etapper::JournalEntryCollection.new(@account, :endDate => DateTime.parse("2/2/2009 7:59 PM"))
    jc.request.endDate.to_s.should == "2009-02-02"
  end
  
  it "knows if it's complete the first time" do
    @this.complete?.should be_false
  end
  
  it "knows its size" do
    @this.size.should == 99
  end
  
  it "returns eTapper objects of the appropriate type" do
    @this.first.should be_a_kind_of Etapper::Contact
  end
  
  it "knows its account" do
    @this.account.should == @account
  end
  
  it "can add journal entries to the account" do
    @dummy.expects(:addGift).returns("111.1.1111")
    gift = Etapper::Gift.new
    (@this << gift).should == @this
    @this.size.should == 100
  end
     
end