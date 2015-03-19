class CreateBudgetGroup < ActiveRecord::Migration
  def change
    create_table :budget_groups do |t|
      t.references :budget
    end
  end
end
