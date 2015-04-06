class Zone < ActiveRecord::Base
	belongs_to :region
	has_many :bssids

	def as_json(options={})
		super(include: :bssids)
	end
end
