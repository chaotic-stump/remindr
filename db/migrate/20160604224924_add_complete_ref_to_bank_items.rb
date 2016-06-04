class AddCompleteRefToBankItems < ActiveRecord::Migration
  def change
    add_column :bank_items, :mark_complete, :boolean
  end
end
