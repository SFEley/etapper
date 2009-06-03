require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/shared_etap_hash_spec')
require 'YAML'

describe Etapper::PhoneHash do
  before(:each) do
    @basearray = YAML.load_file(File.dirname(__FILE__) + '/fixtures/phones_api.yml')
    @etaphash = Etapper::PhoneHash.new(@basearray)
    @keymethod = :type
    @valmethod = :number
    @secondarymethod = :number
  end
  it_should_behave_like "an implementation of EtapHash"
  
  
end
