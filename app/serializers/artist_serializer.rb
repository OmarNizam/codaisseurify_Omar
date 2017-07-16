class ArtistSerializer < ActiveModel::Serializer
  attributes :name, :image_url

  has_many :songs
end
