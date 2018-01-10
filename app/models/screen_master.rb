class ScreenMaster < ApplicationRecord
  # resourcify
  # relationship
  has_many :roles_screen_masters, dependent: :destroy
  has_many :roles, :through => :roles_screen_masters
  has_many :categories

  validates :screen_name, presence: true

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
