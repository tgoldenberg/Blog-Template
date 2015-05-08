class CommentsController < ApplicationController
  respond_to :js, :html

  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :author)
  end
end
