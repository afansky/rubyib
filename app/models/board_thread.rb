class BoardThread < ActiveRecord::Base
  belongs_to :board
  has_many :posts do
    def most_recent
      posts = (find :all, :order => "id desc", :limit => 5).reverse

      first_post = find :first

      posts.delete_if { |post| post == first_post }
    end
  end
end