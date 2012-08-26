class Post < ActiveRecord::Base
  belongs_to :board_thread
  after_initialize :init

  def init
    self.name = 'Anonymous'
  end
end