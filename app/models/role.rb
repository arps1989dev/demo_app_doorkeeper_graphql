class Role < ApplicationRecord

  has_many :user_roles
  has_many :users, :through => :user_roles

  has_many :role_screens
  has_many :screen_masters, :through => :role_screens
end
