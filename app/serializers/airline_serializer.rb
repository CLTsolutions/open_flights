class AirlineSerializer
  include JSONAPI::Serializer
  attributes :name, :image_url, :slug # controlling what we want to expose

  has_many :reviews
end
