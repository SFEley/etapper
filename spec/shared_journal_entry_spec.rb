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
  
end