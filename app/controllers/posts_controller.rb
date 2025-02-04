class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @post = Post.new(post_params)
    render json: @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
