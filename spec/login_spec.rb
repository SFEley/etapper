require File.dirname(__FILE__) + '/spec_helper.rb'

describe "login" do
  it "has a login method" do
    client.should respond_to(:login)
  end
  
  it "returns success"
end