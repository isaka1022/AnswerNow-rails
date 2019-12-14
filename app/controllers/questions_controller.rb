class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
  end

  def create
    @question = Question.new
    @question.content = question_params[:content]
    @question.user_id = current_user.id
    @question.save
    redirect_to '/questions'
  end

  def destory
  end

  private 
  def question_params
    params.require(:question).permit(:content)
  end


end
