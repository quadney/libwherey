class RemoveAltitudeFromZones < ActiveRecord::Migration
  def change
  	remove_column :zones, :gps_altitude
  end
end
