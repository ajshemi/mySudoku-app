class GamesController < ApplicationController

    def index
        games=Game.all 
        render json: games
    end
    def random
        game = Game.where(id: 1..5).sample
        render json: game
    end

    def show
        game =Game.find_by(id:params[:id])
        render json: game
    end
    
    def create 
        # byebug
        game=Game.create(difficulty:params[:game]["difficulty"],game_array_start:params[:game]["game_array_start"],game_array_end:params[:game]["game_array_end"])
        if game.valid?
            render json: game
        else
            render json: game.errors.full_messages
        end
    end

    def update
        # byebug
        game = Game.find_by(id:params[:id])
        game.update(game_array_start:params[:game]["game_array_start"],game_array_end:params[:game]["game_array_end"]) #perhaps no need to update difficulty:params[:game]["difficulty"]
        render json: game
    end
    
    def destroy
        game = Game.find_by(id:params[:id])
        game.destroy
        render json: {game: game}
    end
    
end
