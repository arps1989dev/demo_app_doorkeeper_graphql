class AddNameAndEmailToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_joining, :date
    add_column :users, :delete_flag, :boolean, :default => false
    add_column :users, :admin, :boolean, :default => false

  end
end
