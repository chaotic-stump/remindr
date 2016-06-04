class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  validates_presence_of :name
  acts_as_commontable
end
