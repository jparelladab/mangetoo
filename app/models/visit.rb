class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :reviews
end
