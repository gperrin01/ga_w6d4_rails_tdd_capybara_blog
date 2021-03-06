class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post].permit(:title, :text))
    if @post.save
      redirect_to posts_path
    else render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.new params[:post].permit(:title, :text)
    if @post.save
      redirect_to post_path(@post)
    else render 'show'
    end
  end

  def destroy
  end
end
