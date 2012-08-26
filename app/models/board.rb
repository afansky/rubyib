class Board < ActiveRecord::Base
  has_many :board_threads

  def self.max_post_number (board_id)
    board = find_by_id board_id

    max_numbers = board.board_threads.collect {|t| t.posts.max_by {|p| p.post_number}.post_number}

    max_numbers.max
  end
end