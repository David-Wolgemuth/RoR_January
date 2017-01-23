class Product < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  validates :name, presence: { message: "Name must be entered"}
  validates :description, presence: { message: "Description must be entered"}
  validates :pricing, presence: { message: "Pricing must be entered"}

end
