class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name,:age, presence: true, length: { in: 2..20}
  validates :email, presence:true, uniqueness: { case_sensitive: false},
    format: { with: EMAIL_REGEX }
  validates :age, numericality: true
  validates_numericality_of :age, :greater_than_or_equal_to => 10
  validates_numericality_of :age, :less_than_or_equal_to => 150
end
