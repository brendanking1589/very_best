class Venue < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :bookmark,
             :required => false

  belongs_to :cuisine,
             :required => false,
             :counter_cache => true

  belongs_to :menu_item,
             :class_name => "Dish",
             :foreign_key => "dish_id",
             :counter_cache => :restaurants_count

  # Indirect associations

  # Validations

end
