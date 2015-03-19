require 'rails_helper'

RSpec.describe "envelopes/index", :type => :view do
  before(:each) do
    assign(:envelopes, [
      Envelope.create!(),
      Envelope.create!()
    ])
  end

  it "renders a list of envelopes" do
    render
  end
end
