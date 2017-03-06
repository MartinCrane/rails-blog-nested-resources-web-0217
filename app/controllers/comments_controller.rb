require 'pry'
class CommentsController < ApplicationController

  def index
  end

  def show
  end

  def new
    binding.pry
  end

  def edit
  end

  def create

    @comment = Comment.create(comment_params)
    @post = Post.find(params[:post_id])
    @user = User.find(params[:user_id])
    @comment.post = @post
    @comment.user = @user
    binding.pry
    @comment.save
    render "/posts/show"

  end

  def update
  end

  def destroy

  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id)
    end
end
