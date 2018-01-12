class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :name
      t.string :image
      t.integer :cuisine_id
      t.integer :dish_id
      t.integer :bookmark_id

      t.timestamps

    end
  end
end
