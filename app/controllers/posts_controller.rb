class PostsController < ApplicationController
  def index
    @posts = Post.where(post_id: current_user.id).order(id: "DESC")
    @messages = Message.where(params[:id])
  end
  
  def detail
    @post = Post.find(params[:id])
  end
  
  def show
    @post = Post.new
    @message = Message.find(params[:id])
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save!
      flash[:success] = '応募完了しました。登録したメールアドレスの返信をお待ちください。' 
      redirect_to messages_path
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  

  def explain
    @post = Post.find(params[:id])
  end

  
  private
  def post_params
    params.require(:post).permit(:post_name,:post_content,:post_old,:post_sex,:post_job,:post_email,:post_id)
  end
end
