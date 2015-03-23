class BudgetGroup < ActiveRecord::Base
  has_many :budget_items

end
