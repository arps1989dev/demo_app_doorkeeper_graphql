class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # relationships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :screen_masters

  has_many :user_roles
  has_many :roles, :through => :user_roles

  # callbacks
  after_create :set_default_role


  # methods
  private
  def set_default_role
  	self.roles << Role.find_by_role_name("super_admin")
    self.save
  end
end
