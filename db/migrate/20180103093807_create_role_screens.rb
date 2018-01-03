class CreateRoleScreens < ActiveRecord::Migration[5.1]
  def change
    create_table :role_screens do |t|
      t.references :role, foreign_key: true
      t.references :screen_master, foreign_key: true

      t.timestamps
    end
  end
end
