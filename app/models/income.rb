class Income < ActiveRecord::Base
  has_many :transactions, as: :transable

end
