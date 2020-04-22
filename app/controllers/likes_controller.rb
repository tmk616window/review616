class LikesController < ApplicationController
    def create
        @like = Like.new(like_params)
        @like.save
        redirect_to '/tasks'
    end
    
    def destroy
        @like = Like.find(params[:id])
        @like.destroy
        redirect_to '/tasks'
    end
    
    def like_params
        params.require(:like).permit(:user_id,:task_id)
    end
    
end
