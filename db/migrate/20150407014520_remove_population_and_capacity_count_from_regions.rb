class RemovePopulationAndCapacityCountFromRegions < ActiveRecord::Migration
  def change
  	remove_column :regions, :current_population
  	remove_column :regions, :total_capacity
  end
end
