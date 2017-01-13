class User < ActiveRecord::Base
  validates :first_name, :last_name, presence: true, length: { in: 2..50 }
  validates :email, presence: true
  validates :age, presence: true
  validates_numericality_of :age, only_integer: true, greater_than: 9, less_than: 150


end
