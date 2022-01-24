class Movie < ApplicationRecord
  validates :title, length: {minimum: 2}, uniqueness: true
  validates :year, numericality: {greater_than: 1800}
  validates :plot, presence: true
  validates :director, presence: true

  has_many :actors
end
