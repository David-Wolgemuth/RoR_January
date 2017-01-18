class User < ActiveRecord::Base
  validates :first_name, presence: { message: "first_name must be entered"}
  validates :last_name, presence: { message: "last_name must be entered"}
  validates :email_address, presence: { message: "email_address must be entered"}
  validates :password, presence: { message: "Password must be entered"}

end
