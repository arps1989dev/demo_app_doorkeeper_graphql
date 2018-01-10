class RenameRoleScreenToScreenMastersRole < ActiveRecord::Migration[5.1]
  def change
  	rename_table :role_screens, :roles_screen_masters
  end
end
