class CreateEnvelopes < ActiveRecord::Migration
  def change
    create_table :envelopes do |t|

      t.timestamps
    end
  end
end
