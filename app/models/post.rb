class Post < ActiveRecord::Base
  belongs_to :board_thread
end