class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.references :plan
      t.date  :start_on
      t.date :end_on
      t.timestamps
    end
  end
end
