# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
plan = Plan.create

budgets = Budget.create([{
    plan: plan,
    start_on: Date.today - 2.month,
    end_on: Date.today - 1.month
  },{
    plan: plan,
    start_on: Date.today - 1.month,
    end_on: Date.today
  },{
    plan: plan,
    start_on: Date.today ,
    end_on: Date.today + 1.month
  }])

BudgetItem.create([{
  
  }])