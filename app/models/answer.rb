class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :likes

  def liked?(user_id)
    likes.pluck(:user_id).include?(user_id)
  end
end
