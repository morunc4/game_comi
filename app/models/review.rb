class Review < ApplicationRecord
  belongs_to :user
  belongs_to :rakuten_game

  validates :score,presence: true
  validates :title,presence: true
  validates :review,presence: true
end
