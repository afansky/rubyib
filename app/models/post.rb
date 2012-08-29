class Post < ActiveRecord::Base
  belongs_to :board_thread
  after_initialize :init

  validates :text, :presence => true

  def init
    self.name = 'Anonymous'
  end
end