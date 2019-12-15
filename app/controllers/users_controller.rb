class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def user_params
    params.require(:user).permit(:family_name, :family_name_kana, :first_name, :first_name_kana, :nickname, :sex, :faculty, :subject, :course, :laboratory, :club, :image)
  end
 
end
