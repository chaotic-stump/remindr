class Grocery < ActiveRecord::Base
	belongs_to :user
	acts_as_commontable
end
