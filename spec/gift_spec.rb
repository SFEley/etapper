require File.dirname(__FILE__) + '/spec_helper.rb'
require File.dirname(__FILE__) + '/shared_journal_entry_spec'

describe Etapper::Gift do
  @api_methods = %w{
      amount
      nonDeductibleAmount
      fund
      campaign
      approach
      letter
      receipt
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
    @api_object = @api_collection.data.first
    @api_accounts = YAML.load_file(File.dirname(__FILE__) + '/fixtures/accounts_api.yml')
    @api_account = Etapper::Account.new(@api_accounts['MashalSaif'])
  end

  before(:each) do
    @dummy.stubs(:getGift).with("1441.0.23787729").returns(@api_object)
    @dummy.stubs(:getJournalEntries).returns(@api_object)
    @this = Etapper::Gift.new(@api_object)
  end

  it_should_behave_like "a Journal Entry class"
  


  



end
