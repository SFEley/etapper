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
  
  it "converts eTapestry field names to proper method names" do
    e = Etapper::API::DefinedValue.new(1, 0, "990 DQs", "4310.0.5555", "12/31/2009", "4310.0.5555555")
    d = Etapper::DefinedValue.new(e)
    d.key.should == :_990_d_qs
  end
    
  it "allows setting Display Type" do
    d = Etapper::DefinedValue.new(:foo => "bar", :display_type => :multi_select)
    d.displayType.should == 2
  end
  
  it "defaults Display Type to 0" do
    d = Etapper::DefinedValue.new(:foo => "bar")
    d.displayType.should == 0
  end
    
  it "allows setting Data Type" do
    d = Etapper::DefinedValue.new(:foo => "bar", :data_type => :month_and_day)
    d.dataType.should == 2
  end

  it "defaults Data Type to 0" do
    d = Etapper::DefinedValue.new(:foo => "bar")
    d.dataType.should == 0
  end
  
  it "raises an exception if no field value is provided" do
    lambda {Etapper::DefinedValue.new(:display_type => :multi_select, 
                              :data_type => :month_and_day)}.should raise_error(Etapper::BadValueError)
  end
  
  it "raises an exception if multiple field values are provided" do
    lambda {Etapper::DefinedValue.new("foo" => "bar",
                              "yoo" => "yar")}.should raise_error(Etapper::BadValueError)
  end
  
  it "can take an API::DefinedValue type" do
    dv = Etapper::API::DefinedValue.new(2, 1, "Access ID", "4310.0.3881", "Z32622", "4310.0.2279167")
    d = Etapper::DefinedValue.new(dv)
    d.fieldName.should == "Access ID"
    d.value.should == "Z32622"
  end
  
  it "can create a hash" do
    d = Etapper::DefinedValue.new(:foo => "bar", :display_type => :multi_select)
    d.to_hash.should == {:foo => "bar"}
  end
  
  it "knows its key" do
    d = Etapper::DefinedValue.new("Access ID" => "Z32622")
    d.key.should == :access_id
  end
    
    
  
end