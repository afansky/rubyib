class BoardsController < ApplicationController
  def show
    @board = Board.find_by_name! params[:id]
  end
end
