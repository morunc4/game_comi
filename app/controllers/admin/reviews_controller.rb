class Admin::ReviewsController < ApplicationController
  before_action :authenticate_admin!
  def show
    @rakuten_game = RakutenGame.find(params[:rakuten_game_id])
    @review=Review.find(params[:id])
    @comments=@review.comments.all
  end

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
