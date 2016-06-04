class AddUserRefToBankItems < ActiveRecord::Migration
  def change
    add_column :bank_items, :user_id, :integer
  end
end
