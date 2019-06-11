class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    @consoles = Console.all
  end

  def create
    @game = Game.create(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  def edit
    @game = Game.find(params[:id])
    @consoles = Console.all
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to game_path(@game)
  end

private

  def game_params
    params.require(:game).permit(:title, :maturity_rating, :price, :genre, :console_id)
  end

end
