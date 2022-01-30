class Movie < ApplicationRecord
  validates :title, length: {minimum: 2}, uniqueness: true
  validates :year, numericality: {greater_than: 1800}
  validates :plot, presence: true
  validates :director, presence: true

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    names = []
    self.genres.each do |genre|
      names << genre.name
    end
    return names
  end
end
