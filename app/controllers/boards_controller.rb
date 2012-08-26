class BoardsController < ApplicationController
  def show
    @board = Board.find_by_name! params[:id]
    @new_thread = @board.board_threads.build
  end
end
