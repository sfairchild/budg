class Budget < ActiveRecord::Base
  belongs_to :plan
  has_many :budget_items

  validates :start_on, :end_on, :plan, presence: true


  def name
    start_on.strftime('%b-%C%y')
  end
end
