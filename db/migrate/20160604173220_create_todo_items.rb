class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :name
      t.boolean :complete
      t.belongs_to :todo_list

      t.timestamps null: false
    end
  end
end
