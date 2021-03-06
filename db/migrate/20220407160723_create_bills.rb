class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.float :bill_value
      t.date :due_date
      t.references :enrollment, null: false, foreign_key: true
      t.string :bill_status

      t.timestamps
    end
  end
end
