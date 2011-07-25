require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/login" do
  before(:each) do
    @response = request("/login")
  end
end