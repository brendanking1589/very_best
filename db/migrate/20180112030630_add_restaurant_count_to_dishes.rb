class AddRestaurantCountToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :restaurants_count, :integer
  end
end
