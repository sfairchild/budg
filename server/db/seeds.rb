# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

groups = ["Household", "Auto", "Entertainment"].map{|name| BudgetGroup.create(name: name)}
plan = Plan.create

budgets = Budget.create([3,2,1,0,-1,-2].map do |n|
  {plan: plan,
    start_on: Date.today - n.month,
    end_on: Date.today - (n -1).month - 1.day
    }
  end)

budgets.map do |budget|
  BudgetItem.create([{
    budget: budget,
    budget_group: groups[0]
    name: "Mortgage",
    planned: 550.50
  }, {
    budget: budget,
    budget_group: groups[0]
    name: "Home Insurance",
    planned: 150
  }, {
    budget: budget,
    budget_group: groups[1]
    name: "Auto Payment",
    planned: 234.34
  }, {
    budget: budget,
    budget_group: groups[2]
    name: "Movies",
    planned: 40
  }, {
    budget: budget,
    budget_group: groups[2]
    name: "Fun Money",
    planned: 50
  }, {
    budget: budget,
    budget_group: groups[1]
    name: "Car Repair",
    planned: 100
  }])
end
