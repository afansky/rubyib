class BoardsController < ApplicationController
  def show
    @board = Board.find_by_name params[:board_name]
  end
end
