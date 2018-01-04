class AddVisibilityToRoleScreen < ActiveRecord::Migration[5.1]
  def change
    add_column :role_screens, :visibility, :boolean, :default => false
  end
end
