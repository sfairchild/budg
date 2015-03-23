require 'rails_helper'

RSpec.describe Plan, :type => :model do
  it { should have_many :budgets }

  context "getting the current budget" do
    it "returns nil if no budget available" do
      expect(Plan.new.current_budget).to be_nil
    end

    it "returns nil if no budgets within today available" do
      plan = FactoryGirl.create(:plan)
      FactoryGirl.create(:budget, start_on: Date.today + 1.day, end_on: Date.today + 31.days, plan: plan)
      FactoryGirl.create(:budget, start_on: Date.today - 31.days, end_on: Date.today - 1.day, plan: plan)
      expect(plan.current_budget).to be_nil
    end

    it "returns the budget if the start date is today" do
      budget = FactoryGirl.create(:budget, start_on: Date.today, end_on: Date.today + 20.days)
      plan = FactoryGirl.create(:plan, budgets: [ budget ])
      expect(plan.current_budget).to eq budget
    end

    it "returns the budget if the end date is today" do
      budget = FactoryGirl.create(:budget, start_on: Date.today - 20.days, end_on: Date.today)
      plan = FactoryGirl.create(:plan, budgets: [ budget ])
      expect(plan.current_budget).to eq budget
    end
  end

end
