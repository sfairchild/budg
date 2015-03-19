class BudgetItem < ActiveRecord::Base
  belongs_to :budget_group
  has_many :transactions, as: :transable

end
