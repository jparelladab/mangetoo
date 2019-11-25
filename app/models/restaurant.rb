class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :visits
end
