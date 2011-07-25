require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/logout" do
  before(:each) do
    @response = request("/logout")
  end
end