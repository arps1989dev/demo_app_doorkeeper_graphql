class AddUserIdToScreenMaster < ActiveRecord::Migration[5.1]
  def change
    add_reference :screen_masters, :user, foreign_key: true
  end
end
