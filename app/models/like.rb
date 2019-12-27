class Like < ApplicationRecord
  belongs_to :answer
  belongs_to :user

  def toggle_existance
    new_record? ? save : destroy
    destroyed? ? {result: 0,result_text: "destroyed"} : {result: 1, result_text: "created"}
  end
end
