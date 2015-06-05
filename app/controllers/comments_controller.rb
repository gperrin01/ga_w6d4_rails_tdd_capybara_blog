class CommentsController < ApplicationController



  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    post = Post.find params[:post_id]
    post.comments.create(params[:comment].permit(:text))

    redirect_to post_path(post)
  end

  def update

  end

  def edit
  end

  def delete
  end
end
