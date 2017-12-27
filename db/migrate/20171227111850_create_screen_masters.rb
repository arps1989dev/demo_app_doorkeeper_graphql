class CreateScreenMasters < ActiveRecord::Migration[5.1]
  def change
    create_table :screen_masters do |t|
      t.string :screen_name
      t.integer :category_id

      t.timestamps
    end
  end
end
