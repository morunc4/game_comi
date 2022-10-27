class Admin::CommentsController < ApplicationController
  def destroy
    @review=Review.find(params[:review_id])
    @comment=Comment.find(params[:id])
    @comment.destroy
    redirect_to admin_rakuten_game_review_path(@review.rakuten_game_id,@review.id)
  end
end
