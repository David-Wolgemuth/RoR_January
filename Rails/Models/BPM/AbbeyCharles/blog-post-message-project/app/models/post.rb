class Post < ActiveRecord::Base
  belongs_to :blog
  validates :title, :content, presence:true
  validates :title, length: {minimum:7}
  # set auto-function that deletes messages associated with post when post is deleted
  has_many :messages, dependent: :destroy
    end
  end
end
