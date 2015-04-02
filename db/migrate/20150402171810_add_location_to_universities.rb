class AddLocationToUniversities < ActiveRecord::Migration
  def change
    add_column :universities, :latitude, :float
    add_column :universities, :longitude, :float
  end
end
