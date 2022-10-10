class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @review = Review.where(user_id: current_user.id)
  end

  def edit
  end

  def update
    @user=current_user
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name,:image)
  end
end
