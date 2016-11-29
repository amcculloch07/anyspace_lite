class Photo < ApplicationRecord
  # Direct associations

  belongs_to :venue

  # Indirect associations

  # Validations

  validates :image, :uniqueness => true

  validates :image, :presence => { :message => "Please Upload an Image" }

end
