class FollowsController < ApplicationController
    def create
        @follow = Follow.new(follow_params)
        @follow.save
        redirect_to '/tasks'
    end
    
    def destroy
        @follow = Follow.find(params[:id])
        @follow.destroy
        redirect_to '/tasks'
    end
    
    def follow_params
        params.require(:follow).permit(:user_id,:follower_id,:follow_user_email)
    end
    
end
