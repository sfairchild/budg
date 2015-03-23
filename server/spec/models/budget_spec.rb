require 'rails_helper'

RSpec.describe Budget, :type => :model do
  subject { FactoryGirl.build(:budget) }
  context "should be valid" do
    it { should belong_to :plan }
    it { should validate_presence_of :start_on}
    it { should validate_presence_of :end_on}
    it { should validate_presence_of :plan}
  end


end
