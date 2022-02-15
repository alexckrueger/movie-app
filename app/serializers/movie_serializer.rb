class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :english, :director

  has_many :genres
end
