class PostsController < ApplicationController
  def index
    @posts = Post.today
  end

  def show
    @post = Post.find(params[:id])

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.score = 0
    if @post.save
      # default_score = @post.default_score
      # @post.update(score: default_score)
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def vote
    @post = Post.find(params[:post_id])
    current_score = @post.vote
    @post.update(score: current_score)
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title, :url)
  end

end
