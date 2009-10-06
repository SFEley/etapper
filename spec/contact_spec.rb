require File.dirname(__FILE__) + '/spec_helper.rb'
require File.dirname(__FILE__) + '/shared_journal_entry_spec'

describe Etapper::Contact do
  @api_methods = %w{
      subject
      method
    }
  
  @api_readonly_methods = []
  
  before(:all) do
    @api_collection = YAML.load_file(File.dirname(__FILE__) + '/fixtures/contacts_api.yml')
    @api_object = @api_collection.data.first
    @api_accounts = YAML.load_file(File.dirname(__FILE__) + '/fixtures/accounts_api.yml')
    @api_account = Etapper::Account.new(@api_accounts['MashalSaif'])
  end

  before(:each) do
    @dummy.stubs(:getContact).with("4310.0.2276675").returns(@api_object)
    @dummy.stubs(:getJournalEntries).returns(@api_object)
    @this = Etapper::Contact.new(@api_object)
  end

  it_should_behave_like "a Journal Entry class"
  




end
