require 'rails_helper'

RSpec.describe "envelopes/edit", :type => :view do
  before(:each) do
    @envelope = assign(:envelope, Envelope.create!())
  end

  it "renders the edit envelope form" do
    render

    assert_select "form[action=?][method=?]", envelope_path(@envelope), "post" do
    end
  end
end
