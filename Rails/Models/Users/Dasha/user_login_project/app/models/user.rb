class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, presence: true, length: { in: 2..20 }
  validates :last_name, presence: true, length: { in: 2..20 }
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :age, presence: true, numericality: true, :inclusion => {:in => [10,150]}

  user = User.new
  user.valid?
  user.errors.full_messages

end
