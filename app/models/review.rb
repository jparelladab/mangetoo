class Review < ApplicationRecord
  belongs_to :visit
  # UNCOMMENT THE VALIDATIONS BELOW LATER IN THE PROJECT
  # validates :visit, presence: true
  # # CONSIDER WHETHER CONTENT SHOULD BE NECESSARY OR IF CAN JUST LEAVE RATING OR VICE VERSA
  # validates :content, presence: true
  # validates :rating, presence: true
end
