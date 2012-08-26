class PostsController < ApplicationController
  def create
    post = Post.new(params[:post])

    post.creation_date = DateTime.current
    post.post_number = Board.max_post_number(params[:board_id]) + 1

    post.save

    redirect_to :back
  end
end