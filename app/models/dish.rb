class Dish < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :class_name => "Venue",
             :dependent => :nullify

  # Indirect associations

  has_many   :users,
             :through => :favorites,
             :source => :user

  # Validations

end
