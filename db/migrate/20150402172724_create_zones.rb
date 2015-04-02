class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :identifier
      t.integer :region_id
      t.float :gps_altitude
      t.string :wifi_identity

      t.timestamps
    end
  end
end
