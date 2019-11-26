class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :reviews
  # UNCOMMENT THE VALIDATIONS BELOW LATER IN THE PROJECT
  validates :date, presence: true
  validates :user, presence: true
  validates :restaurant, presence: true
  # Note: have not included number_of_people in validations - consider whether to do so
end
