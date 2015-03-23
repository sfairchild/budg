class Budget < ActiveRecord::Base
  belongs_to :plan
  has_many :budget_items

  validates :start_on, :end_on, :plan, presence: true

  scope :upcoming_budgets, -> { where('start_on > ?', Date.today)}

  def name
    start_on.strftime('%b-%C%y')
  end

  def self.get_current
  	where('start_on <= ? AND end_on > ?', Date.today, Date.today).first
  end
end
