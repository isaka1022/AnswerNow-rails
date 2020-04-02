class LikesController < ApplicationController
  before_action :set_valiables, only: [:index, :create, :destroy, :toggle]
  protect_from_forgery
  def index
    @likes = @answer.likes
  end

  def create
    @like = Like.create(user_id: current_user.id, answer_id: params[:answer_id])
    @answer = Answer.find_by(params[:answer_id])
    render 'create.js.erb'
  end

  def destroy
    like = Like.create(user_id: current_user.id, answer_id: params[:answer_id])
    like.destroy
    @likes = Like.where(answer_id: params[:answer_id])
    @answers = Answer.all
  end

  private

  def set_valiables
    @answer = Answer.find(params[:answer_id])
  end
end
