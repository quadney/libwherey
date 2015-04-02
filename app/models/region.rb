class Region < ActiveRecord::Base
	belongs_to :university
	has_many :zones
end
