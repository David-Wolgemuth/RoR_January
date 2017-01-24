class User < ActiveRecord::Base
  has_secure_password
  has_many :secrets
  validates :name, presence: { message: "first name must be entered"}
  validates :email, presence: { message: "email must be entered"}
  validates :password, presence: { message: "password must be entered"}
  validates :password_confirmation, presence: { message: "passwords must match"}
end
