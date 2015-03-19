class Plan < ActiveRecord::Base
  has_many :budgets


  def current_budget
    budgets.where('start_on <= ? and end_on >= ?', Date.today, Date.today).first
  end
end
