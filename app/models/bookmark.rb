class Bookmark < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  # UNCOMMENT THE VALIDATIONS BELOW LATER IN THE PROJECT
  # validates :restaurant, presence: true
  # validates :user, presence: true
end
