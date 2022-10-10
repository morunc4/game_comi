class Admin::RakutenGamesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @game = RakutenGame.all
  end

  def show
    @rakuten_game = RakutenGame.find(params[:id])
    @review=@rakuten_game.reviews
  end
end
