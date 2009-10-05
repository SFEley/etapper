require File.dirname(__FILE__) + '/shared_etap_abstract_spec'

shared_examples_for "a Journal Entry class" do
  
  def common_type
    described_class.name.rpartition(/::/).last.symbolize
  end
  
  # Also assumes these arrays were already initialized with class-specific fields
  @api_methods += %w{
      accountRef
      accountName
      ref
      final
      date
      note
    }
  
  @api_readonly_methods += %w{
      type
      accountRef
      accountName
      ref
    }
  
  it_should_behave_like "an Etapper abstract type"
  
  it "always has a type" do
    je = described_class.new
    je.type.should == common_type
  end
  
  it "sets the base type if it's a new record" do
    je = described_class.new
    je.base.type.should == Etapper::JournalEntry::TYPES[common_type]
  end
  
  it "maps defined values to fields" do
    dv = Etapper::API::DefinedValue.new(0, 0, "foo", "1.1.1", "bar", "2.2.2")
    @this.base.definedValues << dv
    @this.foo.should == "bar"
  end

  it "knows its account" do
    @dummy.expects(:getAccount).once.with("4310.0.2276679").returns(@api_accounts['MashalSaif'])
    @this.account.should == @api_account
  end
  
  describe "retrieval" do
    before(:each) do
      
    end
    it "implements the 'find' method" do
      described_class.should respond_to(:find)
    end
    
    it "gets the single gift if given a ref" do
      @dummy.expects(:getGift).with("1441.0.23787729").returns(@api_object)
      g = described_class.find("1441.0.23787729")
      g.should be_a_kind_of(described_class)
      g.base.should == @api_object
    end
    
    it "can find a collection by account" do
      @dummy.expects(:getDuplicateAccount).once.returns(@api_accounts['MashalSaif'])
      @dummy.expects(:getJournalEntries).returns(@api_collection)
      g = described_class.find(:account => "mashalsaif@gmail.com")
      g.count.should == 5
    end
    
  end
  
  
  describe "creation and update" do
    it "allows an account to be set after creation" do
      @this = described_class.new
      @this.account = @api_account
      @this.account.should == @api_account
    end
    
  end
  
end