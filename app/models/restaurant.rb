class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :visits
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include AlgoliaSearch
  algoliasearch do
    attributes :name
    searchableAttributes ['name']
  end

  # UNCOMMENT THE VALIDATIONS BELOW LATER IN THE PROJECT
  # validates :name, presence: true
  # validates :address, presence: true
  # validates :city, presence: true
  # validates :category, presence: true
end
