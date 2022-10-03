class Public::ReviewsController < ApplicationController
  def index
    @user_review = Review.where(rakuten_game_id: (params[:rakuten_game_id]),user_id: current_user.id)
    @rakuten_game = RakutenGame.find(params[:rakuten_game_id])
    @review=@rakuten_game.reviews
    @score=Review.average(:score)
  end

  def create
    @rakuten_game=RakutenGame.find(params[:rakuten_game_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.rakuten_game_id=@rakuten_game.id
    if @review.save
      redirect_to root_path
    else
      @games=RakutenGame.find(params[:rakuten_game_id])
      @review = Review.new
      render template: "public/rakuten_games/show"
    end


  end

  def edit
    @rakuten_game = RakutenGame.find(params[:rakuten_game_id])
    @review=Review.find(params[:id])
  end

  def update
    @rakuten_game = RakutenGame.find(params[:rakuten_game_id])
    @review=Review.find(params[:id])
    if @review.update(review_params)
      redirect_to rakuten_game_reviews_path(@rakuten_game)
    else
      @games=RakutenGame.find(params[:rakuten_game_id])
      render :edit
    end
  end

  def destroy
    @game=RakutenGame.find(params[:rakuten_game_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to rakuten_game_reviews_path(@game)
  end

  private

  def review_params
    params.require(:review).permit(:title,:review,:score)
  end
end
