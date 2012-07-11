class BoardThread < ActiveRecord::Base
  belongs_to :board
  has_many :posts
end