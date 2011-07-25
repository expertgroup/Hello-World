require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/register" do
  before(:each) do
    @response = request("/register")
  end
end