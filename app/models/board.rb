class Board < ActiveRecord::Base
  has_many :board_threads
end