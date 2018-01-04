class ScreenMaster < ApplicationRecord
  # relationship
  has_many :categories

  has_many :role_screens
  has_many :roles, :through => :role_screens

  # callbacks
  # after_create :set_visibility
  # methods
  private

  # def set_visibility
  #   @user = User.where(admin: false)
  #   @user.each do |user|
  #     RoleScreen.create(user_id: user.id, screen_master_id: self.id, visibility: false)
  #   end
  # end

end
