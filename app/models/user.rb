#
class User < ActiveRecord::Base
  include Authentication

  has_many :pets

  acts_as_birthday :birthday
end
