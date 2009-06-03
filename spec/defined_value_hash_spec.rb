require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/shared_etap_hash_spec')
require 'YAML'

describe Etapper::DefinedValueHash do
  before(:each) do
    @basearray = YAML.load_file(File.dirname(__FILE__) + '/fixtures/defined_values_api.yml')
    @etaphash = Etapper::DefinedValueHash.new(@basearray)
    @keymethod = :fieldName
    @valmethod = :value
    @secondarymethod = :valueRef
  end
  
  it_should_behave_like "an implementation of EtapHash"
  
  it "can append values when they already exist" do
    @etaphash.add_or_append(:gender, 'Male')
    @etaphash[:gender].should == ['Female','Male']
  end
  


end