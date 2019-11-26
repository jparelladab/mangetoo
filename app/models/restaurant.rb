class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :visits
  # UNCOMMENT THE VALIDATIONS BELOW LATER IN THE PROJECT
  # validates :name, presence: true
  # validates :address, presence: true
  # validates :city, presence: true
  # validates :category, presence: true
end
