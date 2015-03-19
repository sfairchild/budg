class BudgetItem < ActiveRecord::Base
  belongs_to :budget
  has_many :transactions, as: :transable

end
