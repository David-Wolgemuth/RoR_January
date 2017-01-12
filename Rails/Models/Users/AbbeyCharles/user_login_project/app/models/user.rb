class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, :age, presence:true
  validates :age, numericality:{only_integer: true}
  validates :first_name, :last_name, length: { in: 2..20 }
  validates :age, numericality: {greater_than: 10}
  validates :age, numericality: {less_than: 150}
end
