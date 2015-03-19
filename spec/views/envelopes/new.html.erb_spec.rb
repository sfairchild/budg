require 'rails_helper'

RSpec.describe "envelopes/new", :type => :view do
  before(:each) do
    assign(:envelope, Envelope.new())
  end

  it "renders new envelope form" do
    render

    assert_select "form[action=?][method=?]", envelopes_path, "post" do
    end
  end
end
