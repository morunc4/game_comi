class Admin::RakutenGamesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @game = RakutenGame.page(params[:page]).order(created_at: :desc).per(20)
  end

  def show
    @rakuten_game = RakutenGame.find(params[:id])
    @review=@rakuten_game.reviews.page(params[:page]).order(created_at: :desc).per(20)
  end

  def create
    @game = RakutenGame.new(game_params)
    @game_title = RakutenGame.find_by(title: @game.title)

    if @game_title.present?
      redirect_to admin_rakuten_game_path(@game_title.id)
    else
      @game.save
      redirect_to admin_rakuten_game_path(@game.id)
    end
  end

  private

  def game_params
    params.require(:rakuten_game).permit(:title,:hardware,:smallimage_url,:largeimage_url,:item_url)
  end
end
