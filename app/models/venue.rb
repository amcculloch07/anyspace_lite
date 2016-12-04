class Venue < ApplicationRecord
  # Direct associations

  belongs_to :coordinator

  has_many   :ratings,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :address, :presence => true

  validates :capacity, :presence => true

  validates :city, :presence => true

  validates :state, :presence => true

  validates :title, :presence => { :message => "Please enter venue name" }

  validates :zip, :presence => true

end
