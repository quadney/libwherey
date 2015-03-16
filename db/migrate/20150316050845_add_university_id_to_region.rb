class AddUniversityIdToRegion < ActiveRecord::Migration
  def change
  	add_column :regions, :university_id, :integer
  end
end
