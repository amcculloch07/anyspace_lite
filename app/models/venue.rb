class Venue < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :address, :uniqueness => { :scope => [:title] }

  validates :address, :presence => true

  validates :city, :presence => true

  validates :state, :presence => true

  validates :title, :uniqueness => { :scope => [:address] }

  validates :title, :presence => { :message => "Please enter venue name" }

  validates :zip, :presence => true

end
