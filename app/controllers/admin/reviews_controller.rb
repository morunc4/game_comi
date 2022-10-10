class Admin::ReviewsController < ApplicationController
  before_action :authenticate_admin!
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to admin_rakuten_game_path(@review.rakuten_game_id)
  end

  def user_destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to admin_user_path(@review.user_id)
  end

end
