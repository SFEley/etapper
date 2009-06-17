shared_examples_for "an Etapper abstract type" do
  @api_methods.each do |attribute|
    it "knows its #{attribute}" do
      eval("@this.#{attribute}").should == eval("@api_object.#{attribute}")
    end
  end
  
  # (@api_methods - @api_readonly_methods).each do |attribute|
  #   it "can set its #{attribute}" do
      
end