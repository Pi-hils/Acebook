class PostsController < ApplicationController
  respond_to :js, :html, :json
  before_action :authenticate_account!

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.account_id = current_account.id
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
   
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def like
    @post = Post.find(params[:id])
    if params[:format] == "like"
      @post.liked_by current_account
    elsif params[:format] == "unlike"
      @post.unliked_by current_account
    end
  end

  private

    def post_params
      params.require(:post).permit(:text)
    end
end

