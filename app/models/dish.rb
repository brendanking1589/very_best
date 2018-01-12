class Dish < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :class_name => "Venue",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
