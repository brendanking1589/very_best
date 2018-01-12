require 'open-uri'
class Venue < ApplicationRecord
  before_validation :geocode_address

  def geocode_address
    if self.address.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
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
