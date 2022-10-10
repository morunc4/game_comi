class Public::RakutenGamesController < ApplicationController
  before_action :authenticate_user!,except: [:index,:search,:review]

  def index

    @review = Review.limit(20).order(created_at: :desc)
  end

  def search
    if params[:keyword]
      @items = RakutenWebService::Books::Game.search(title: params[:keyword])
    else

    end

    @game = RakutenGame.new
    @game_index=RakutenGame.new
  end

  def create
    @game = RakutenGame.new(game_params)
    @game_title = RakutenGame.find_by(title: @game.title)

    if @game_title.present?
      redirect_to rakuten_game_path(@game_title.id)
    else
      @game.save
      redirect_to rakuten_game_path(@game.id)
    end



  end

  def review
    @game_index=RakutenGame.new(game_params)
    @game_title = RakutenGame.find_by(title: @game_index.title)
    if @game_title.present?
      redirect_to rakuten_game_reviews_path(@game_title.id)
    else
      @game_index.save
      redirect_to rakuten_game_reviews_path(@game_index.id)
    end
  end


  def show
    @games=RakutenGame.find(params[:id])
    @review = Review.new
  end


  private

  def game_params
    params.require(:rakuten_game).permit(:title,:hardware,:smallimage_url,:largeimage_url,:item_url)
  end
end


