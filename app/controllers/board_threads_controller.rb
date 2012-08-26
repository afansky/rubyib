class BoardThreadsController < ApplicationController
  def show
    @board = Board.find_by_id params[:board_id]
    @board_thread = BoardThread.find_by_id_and_board_id(params[:id], params[:board_id])
    @new_post = Post.new(:board_thread_id => @board_thread.id)
  end

  def create
    thread = BoardThread.new(:board_id => params[:board_id])

    thread.posts.new(:name => params[:name], :email => params[:email], :topic => params[:topic],
                                 :text => params[:text], :post_number => Board.max_post_number(params[:board_id]) + 1,
                                 :creation_date => DateTime.current)

    thread.save

    redirect_to :back
  end
end