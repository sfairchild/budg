class BudgetGroup < ActiveRecord::Base
  belongs_to :budget
  has_many :budget_items

end
