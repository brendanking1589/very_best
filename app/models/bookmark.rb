class Bookmark < ApplicationRecord
  # Direct associations

  has_one    :venue,
             :dependent => :nullify

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_one    :menu_item,
             :through => :venue,
             :source => :menu_item

  # Validations

end
