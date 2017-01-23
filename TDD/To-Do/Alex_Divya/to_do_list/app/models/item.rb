class Item < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true, length: { in: 2..50 }
end
