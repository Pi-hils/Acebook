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
    if Time.now <= @post.created_at + 10.minutes
      if @post.account_id == current_account.id
        if @post.update(post_params)
          redirect_to @post
        else
          render 'edit'
        end
      else
        flash.alert = "You cannot edit a post that you do not own!"
        redirect_to posts_path
      end
    else
      flash.alert = "It has been too long since you posted this to edit the contents!"
        redirect_to @post
    end
  end
  def destroy
    @post = Post.find(params[:id])
    if @post.account_id == current_account.id
      @post.destroy
    else
      flash.alert = "You cannot delete a post that you do not own!"
    end

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

