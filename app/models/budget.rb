class Budget < ActiveRecord::Base
  belongs_to :plan

  validates :start_on, :end_on, :plan, presence: true
end
