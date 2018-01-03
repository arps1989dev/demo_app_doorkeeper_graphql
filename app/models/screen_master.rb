class ScreenMaster < ApplicationRecord
  has_many :categories
  belongs_to :user


  has_many :role_screens
  has_many :roles, :through => :role_screens
end
