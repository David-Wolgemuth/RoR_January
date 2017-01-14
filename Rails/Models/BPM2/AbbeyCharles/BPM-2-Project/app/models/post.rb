class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user

  validates :title, :content, presence:true
  validates :title, length: {minimum:7}

end
