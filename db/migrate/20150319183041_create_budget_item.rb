class CreateBudgetItem < ActiveRecord::Migration
  def change
    create_table :budget_items do |t|
      t.references :budget_group
      t.text :name
      t.decimal :planned
    end
  end
end
