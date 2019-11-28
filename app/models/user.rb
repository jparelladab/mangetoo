class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks
  has_many :visits
  has_many :reviews, through: :visits
  # has_many :followers
  # has_many :following
  # UNCOMMENT THE VALIDATIONS BELOW LATER IN THE PROJECT
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :city, presence: true
  has_one_attached :photo
end
