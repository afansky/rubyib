class PostsController < ApplicationController
  def create
    post = Post.new(params[:post])

    redirect_to :back
  end
end