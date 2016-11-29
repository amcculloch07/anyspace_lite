class Coordinator < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :first_name, :presence => true

  validates :last_name, :presence => true

end
