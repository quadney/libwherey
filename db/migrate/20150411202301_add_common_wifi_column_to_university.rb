class AddCommonWifiColumnToUniversity < ActiveRecord::Migration
  def change
  	add_column :universities, :common_wifi_name, :string
  end
end
