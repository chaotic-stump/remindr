class CreateBankItems < ActiveRecord::Migration
  def change
    create_table :bank_items do |t|
      t.string :name
      t.integer :priority
      t.integer :amount
      t.date :due_date

      t.timestamps null: false
    end
  end
end
