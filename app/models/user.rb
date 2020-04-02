class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :answers
  has_many :questions
  has_many :likes, dependent: :destroy
  has_many :liked_answers, through: :likes, source: :answer
  mount_uploader :image, ImageUploader
end
