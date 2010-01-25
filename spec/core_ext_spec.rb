require File.dirname(__FILE__) + '/spec_helper.rb'

describe "String" do
  it "can turn itself into a symbol" do
    "This Is a Test, Yo".symbolize.should == :this_is_a_test_yo
  end
  
  it "does not start with digits (to ensure valid method names)" do
    "47 Ronin".symbolize.should == :_47_ronin
  end
end

describe "Symbol" do
  it "can turn itself into a titleized string" do
    :hello_darling.titleize.should == "Hello Darling"
  end
end