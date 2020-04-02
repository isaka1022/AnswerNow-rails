class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

end
