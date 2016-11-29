class Coordinator < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :dependent => :nullify

  # Indirect associations

  # Validations

  validates :email_address, :uniqueness => true

  validates :email_address, :presence => true

  validates :first_name, :presence => true

  validates :last_name, :presence => true

end
