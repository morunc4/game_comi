class Review < ApplicationRecord
  belongs_to :user
  belongs_to :rakuten_game
  has_many :comments,dependent: :destroy

  validates :score,presence: true
  validates :title,presence: true
  validates :review,presence: true
end
