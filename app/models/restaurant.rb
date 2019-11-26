class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :visits
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
