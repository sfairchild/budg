require 'rails_helper'

RSpec.describe "envelopes/show", :type => :view do
  before(:each) do
    @envelope = assign(:envelope, Envelope.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
