class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(id: "DESC")
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where(question_id: @question.id)
    @like = Like.new
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

  def user_question
    @user_id = params[:format]
    @questions = Question.where(user_id: params[:id])
  end

  def search
    @questions = Question.search(params[:search])
  end

  def destory
  end

  private 
  def question_params
    params.require(:question).permit(:content)
  end


end
