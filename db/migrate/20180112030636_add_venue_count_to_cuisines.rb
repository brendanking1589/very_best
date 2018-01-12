class AddVenueCountToCuisines < ActiveRecord::Migration[5.0]
  def change
    add_column :cuisines, :venues_count, :integer
  end
end
