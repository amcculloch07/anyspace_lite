class Photo < ApplicationRecord
  # Direct associations

  belongs_to :venue

  # Indirect associations

  # Validations

  validates :image_url, :uniqueness => true

  validates :image_url, :presence => { :message => "Please Upload an Image" }

  validates :venue_id, :presence => true

end
