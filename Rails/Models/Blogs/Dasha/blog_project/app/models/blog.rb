class Blog < ActiveRecord::Base
  has_many :posts
  has_many :votes, :through => :posts

end
