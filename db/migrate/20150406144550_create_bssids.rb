class CreateBssids < ActiveRecord::Migration
  def change
    create_table :bssids do |t|
      t.string :identifier
      t.integer :zone_id

      t.timestamps
    end
  end
end
