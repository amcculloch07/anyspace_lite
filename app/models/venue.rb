class Venue < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, :presence => { :message => "Please enter venue name" }

  validates :zip, :presence => true

end
