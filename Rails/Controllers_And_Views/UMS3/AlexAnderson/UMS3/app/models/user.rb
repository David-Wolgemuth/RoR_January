class User < ActiveRecord::Base
validates :first_name, presence: { message: "first name must be entered"}
validates :last_name, presence: { message: "last name must be entered"}
validates :email_address, presence: { message: "email_address must be entered"}
validates :password, presence: { message: "password must be entered"}

end
