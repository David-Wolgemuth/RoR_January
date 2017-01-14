class User < ActiveRecord::Base
  has_many  :blogs,
            :through => :owners
end
