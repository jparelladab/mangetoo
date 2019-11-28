class Review < ApplicationRecord
  belongs_to :visit
  # UNCOMMENT THE VALIDATIONS BELOW LATER IN THE PROJECT
  # validates :visit, presence: true
  # # CONSIDER WHETHER CONTENT SHOULD BE NECESSARY OR IF CAN JUST LEAVE RATING OR VICE VERSA
  # validates :content, presence: true
  # validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :visit_id, uniqueness: true
end
