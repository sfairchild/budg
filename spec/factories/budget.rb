FactoryGirl.define do

  factory :budget do
    plan
    start_on  Date.today
    end_on (Date.today + 30.days)
  end

end
