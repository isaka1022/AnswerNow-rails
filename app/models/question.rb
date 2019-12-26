class Question < ApplicationRecord
  belongs_to :user, optional: true
  has_many :answers

  def self.search(search)
    if search
      Question.where(['content LIKE ?', "%#{search}"])
    else
      Question.all
    end
  end
end
