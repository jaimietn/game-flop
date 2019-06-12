class GamesController < ApplicationController
  before_action :find_game, only: [:show, :destroy, :edit, :update]
  
  def index
    @games = Game.all
    input = params[:search]
    if input
      @games = Game.all.select do |game|
        game.title.downcase.include?(input.downcase)
      end
    else
      @games = Game.all
    end
  end

  def show
    # @game = Game.find(params[:id])
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
    # @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  def edit
    # @game = Game.find(params[:id])
    @consoles = Console.all
  end

  def update
    # @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to game_path(@game)
  end

private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :maturity_rating, :price, :genre, :console_id)
  end

end
