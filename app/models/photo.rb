class Photo < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :image, :uniqueness => true

  validates :image, :presence => { :message => "Please Upload an Image" }

end
