class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :lat, :long

  has_many :lessons
end
