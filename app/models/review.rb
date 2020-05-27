class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: true
  validates_inclusion_of :rating, :in => 0..5

  validates :restaurant, presence: true
end
