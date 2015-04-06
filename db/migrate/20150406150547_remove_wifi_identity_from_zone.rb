class RemoveWifiIdentityFromZone < ActiveRecord::Migration
  def change
  	remove_column :zones, :wifi_identity
  end
end
