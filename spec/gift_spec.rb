require File.dirname(__FILE__) + '/spec_helper.rb'
require File.dirname(__FILE__) + '/shared_etap_abstract_spec'

describe Etapper::Gift do
  @api_methods = %w{
      type
      accountRef
      accountName
      ref
      final
      date
      amount
      nonDeductibleAmount
      fund
      campaign
      approach
      letter
      receipt
      note
      tributeAccountRef
      tributeAccountName
      recognitionName
      recognitionType
      offsettingRef
      segmentedTransactionRef
      originalAccountRef
      originalAccountName
      originalTransactionRef
    }
  
  @api_readonly_methods = %w{
      type
      accountRef
      accountName
      ref
      tributeAccountRef
      tributeAccountName
      offsettingRef
      segmentedTransactionRef
      originalAccountRef
      originalAccountName
      originalTransactionRef
    }
  
  before(:all) do
    @api_collection = YAML.load_file(File.dirname(__FILE__) + '/fixtures/gifts_api.yml')
    @api_object = @api_collection['data'].first
  end

  before(:each) do
    @dummy.stubs(:getGift).with("1441.0.23787729").returns(@api_object)
    @dummy.stubs(:getJournalEntries).returns(@api_object)
    @this = Etapper::Gift.new(@api_object)
  end

  it_should_behave_like "an Etapper abstract type"
  
  it "returns its base" do
    @this.base.should be_a_kind_of(Etapper::API::Gift)
  end

  it "maps defined values to fields" do
    @this.batch.should == "OL2009.03.02"
    @this.payment_id_number.should == "AAR20090302001038R8917A3000"
    @this.transaction_membership_type.should == "Student"
    @this.transaction_expire_date.should == "12/31/2009"
  end

  it "knows its account" do
    @dummy.expects(:getAccount).once.with("4310.0.2276679").returns("the right account")
    @this.account.should be_a_kind_of(Etapper::Account)
    @this.account.base.should == "the right account"
  end
  
  
  describe "retrieval" do
    it "implements the 'find' method" do
      Etapper::Gift.should respond_to(:find)
    end
    
    it "gets the single gift if given a ref" do
      @dummy.expects(:getGift).with("1441.0.23787729").returns(@api_object)
      g = Etapper::Gift.find("1441.0.23787729")
      g.should be_a_kind_of(Etapper::Gift)
      g.base.should == @api_object
    end
    
  end
  


end
