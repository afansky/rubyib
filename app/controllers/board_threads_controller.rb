class BoardThreadsController < ApplicationController
  def show

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