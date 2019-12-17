class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:family_name, :family_name_kana, :first_name, :first_name_kana, :nickname, :sex, :faculty, :subject, :course, :laboratory, :club, :image)
    end 
 
end
