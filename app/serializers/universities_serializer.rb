class UniversitiesSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :regions
end
