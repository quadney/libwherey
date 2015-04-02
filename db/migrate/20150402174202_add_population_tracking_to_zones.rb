class AddPopulationTrackingToZones < ActiveRecord::Migration
  def change
    add_column :zones, :current_population, :integer
    add_column :zones, :max_capacity, :integer
  end
end
