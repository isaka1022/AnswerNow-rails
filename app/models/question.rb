class Question < ApplicationRecord
  belongs_to :user, optional: true
  has_many :answers

  def self.search(search)
    if search
      Post.where(['content LIKE ?', "%#{search}"])
    else
      Post.all
    end
  end
end
