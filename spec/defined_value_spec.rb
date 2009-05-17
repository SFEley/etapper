require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Defined Value" do
  it "takes a hash with the field name and value" do
    d = Etapper::DefinedValue.new("foo" => "bar")
    d.fieldName.should == "foo"
    d.value.should == "bar"
  end
  
  it "converts symbol field names to titleized strings" do
    d = Etapper::DefinedValue.new(:member_name => "Bob Jones")
    d.fieldName.should == "Member Name"
  end
  
  it "allows setting Display Type" do
    d = Etapper::DefinedValue.new(:foo => "bar", :display_type => :multi_select)
    d.displayType.should == 2
  end
  
  it "allows setting Data Type" do
    d = Etapper::DefinedValue.new(:foo => "bar", :data_type => :month_and_day)
    d.dataType.should == 2
  end
  
  it "raises an exception if no field value is provided" do
    lambda {Etapper::DefinedValue.new(:display_type => :multi_select, 
                              :data_type => :month_and_day)}.should raise_error(Etapper::BadValueError)
  end
  
  it "raises an exception if multiple field values are provided" do
    lambda {Etapper::DefinedValue.new("foo" => "bar",
                              "yoo" => "yar")}.should raise_error(Etapper::BadValueError)
  end
    
  
end