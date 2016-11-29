class Photo < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :image, :presence => { :message => "Please Upload an Image" }

end
