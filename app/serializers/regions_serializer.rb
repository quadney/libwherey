class RegionsSerializer < ActiveModel::Serializer
  attributes :id, :identifier, :latitude, :longitude, :current_population, :total_capacity, :university_id
  has_one :university
end
