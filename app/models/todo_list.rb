class TodoList < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name
	has_many :todo_items
end
