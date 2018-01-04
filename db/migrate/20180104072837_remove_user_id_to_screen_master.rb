class RemoveUserIdToScreenMaster < ActiveRecord::Migration[5.1]
  def change
    remove_column :screen_masters, :user_id, :integer
  end
end
