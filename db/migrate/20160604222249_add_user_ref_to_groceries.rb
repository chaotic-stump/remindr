class AddUserRefToGroceries < ActiveRecord::Migration
  def change
    add_column :groceries, :user_id, :integer
  end
end
