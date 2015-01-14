class GamesController < ApplicationController
  
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  
  def index
  end
  
  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new game_params
    if @game.save
      redirect_to game_path @game, status: 301
    else
      redirect_to :back
    end
  end

  def show
  end
  
  def edit
  end
  
  def update
    if @game.update_attributes game_params
      redirect_to game_path @game, status: 301
    else
      redirect_to :back
    end
  end
  
  def destroy
    @game.destroy
    redirect_to games_path
  end
  
  private
    def set_game
      @game = Game.find params[:id]
    end

    def game_params
      params.permit!
      params[:game]
    end
  
end
