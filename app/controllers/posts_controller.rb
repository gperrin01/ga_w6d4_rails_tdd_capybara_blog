class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
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
  end

  def delete
  end
end
