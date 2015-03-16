class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :identifier
      t.float :latitude
      t.float :longitude
      t.integer :current_population
      t.integer :total_capacity

      t.timestamps null: false
    end
  end
end
