class AnswersController < ApplicationController

  def new
    @question = Question.find_by(id: params[:format])
  end

  def create
    @answer = Answer.new
    @answer.content = answer_params[:content]
    @answer.question_id = answer_params[:question_id]
    @answer.user_id = current_user.id
    @answer.save
    redirect_to question_path(answer_params[:question_id])
  end

  def destory
  end

  private 

  def answer_params
    params.require(:answer).permit(:content, :question_id)
  end
end
