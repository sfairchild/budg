class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.text :name
      t.text :note
      t.text :amount
      t.date :transaction_on
      t.date :cleared_on
      t.references :budget_item
      t.references :income
      t.timestamps
    end
  end
end
