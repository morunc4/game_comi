class RakutenGame < ApplicationRecord
  has_many :reviews, dependent: :destroy

  
end
