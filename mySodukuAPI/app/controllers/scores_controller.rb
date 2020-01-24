class ScoresController < ApplicationController
    def index
        scores=Score.all 
        render json: scores
    end
    # def random
    #     score = Score.where(id: 1..5).sample
    #     render json: score
    # end
    def show
        score =Score.find_by(id:params[:id])
        render json: score
    end
    
    def create
        # byebug 
        score=Score.create(game_id:params[:score]["game_id"],gamer_name:params[:score]["gamer_name"],game_score:params[:score]["game_score"],game_pass:params[:score]["game_pass"])
        if score.valid?
            render json: score
        else
            render json: score.errors.full_messages
        end
    end

    def update
        score = Score.find_by(id:params[:id])
        score.update(game_id:params[:score]["game_id"],gamer_name:params[:score]["gamer_name"],game_score:params[:score]["game_score"],game_pass:params[:score]["game_pass"])
        render json: score
    end
    
    def destroy
        score = Score.find_by(id:params[:id])
        score.destroy
        render json: {score: score}
    end
end
