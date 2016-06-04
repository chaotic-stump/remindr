class TodoList < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name
	has_many :todo_items
  acts_as_commontable
end
