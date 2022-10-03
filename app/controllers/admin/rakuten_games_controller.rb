class Admin::RakutenGamesController < ApplicationController
  def index
    @game = RakutenGame.all
  end

  def show
  end
end
