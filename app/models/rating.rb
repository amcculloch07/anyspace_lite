class Rating < ApplicationRecord
  # Direct associations

  belongs_to :venue,
             :counter_cache => true

  # Indirect associations

  # Validations

end
