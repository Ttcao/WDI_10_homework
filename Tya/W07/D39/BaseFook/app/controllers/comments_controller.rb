class CommentsController < ApplicationController

  # shouldn't do this
  skip_before_action :verify_authenticity_token

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
    # puts result
    # if result
      # redirect_to action: 'index'
      render json: @comment
      # render :json => @comment
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end

end
