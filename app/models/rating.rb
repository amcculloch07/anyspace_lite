class Rating < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :venue

  # Indirect associations

  # Validations

end
