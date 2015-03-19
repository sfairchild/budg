class CreateIncome < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.text :name
      t.references :budget
      t.decimal :planed_amount
      t.date :planed_date
    end
  end
end
