class Region < ActiveRecord::Base
	belongs_to :university
	has_many :zones

	def as_json(options={})
		super(:include => [:zones => { :include => :bssids}])
	end
end
