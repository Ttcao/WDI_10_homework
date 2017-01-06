class PostsController < ApplicationController

  # shouldn't do this
  skip_before_action :verify_authenticity_token

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    render json: @cookie
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      # redirect_to action: 'index'
      render json: @post
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:text)
  end

end

# params is a hash/object - they have key / value pairs
# {
#   post[text]: "first comment",
#   key: value
# }
