class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :transable, polymorphic: true, index: true
      t.text :name
      t.text :note
      t.text :amount
      t.date :transaction_on
      t.date :cleared_on
      t.timestamps
    end
  end
end
