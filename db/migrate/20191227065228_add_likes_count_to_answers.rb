class AddLikesCountToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :likes_count, :integer
  end
end
