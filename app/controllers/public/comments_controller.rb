class Public::CommentsController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.review_id = @review.id
    if @comment.save
      redirect_to rakuten_game_review_path(@review.rakuten_game_id,@review.id)
    else
      @comments = @review.comments.all
      @rakuten_game = RakutenGame.find(params[:rakuten_game_id])
      render template: "public/reviews/show"
    end
  end

  def destroy
    @review = Review.find(params[:review_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to rakuten_game_review_path(@review.rakuten_game_id,@review.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
