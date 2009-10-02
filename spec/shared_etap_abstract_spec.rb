shared_examples_for "an Etapper abstract type" do
  def api_base
    described_class.name.gsub(/::/, "::API::")
  end

  @api_methods.each do |attribute|
    it "knows its #{attribute}" do
      eval("@this.#{attribute}").should == eval("@api_object.#{attribute}")
    end
  end
  
  (@api_methods - @api_readonly_methods).each do |attribute|
    it "can set its #{attribute}" do
      eval("@this.#{attribute} = 'foo'")
      eval("@this.#{attribute}").should == 'foo'
    end
  end
      
  @api_readonly_methods.each do |attribute|
    it "cannot set #{attribute}" do
      eval("lambda \{@this.#{attribute} = 'foo'\}").should raise_error(Etapper::ReadOnlyError)
    end
  end
  
  it "returns its base" do
    @this.base.class.name.should == api_base
  end
  
      
end