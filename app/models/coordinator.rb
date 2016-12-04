class Coordinator < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :dependent => :nullify

  # Indirect associations

  # Validations

  validates :email_address, :uniqueness => true

  validates :email_address, :presence => true

  validates :name, :uniqueness => { :scope => [:email_address, :phone_number] }

  validates :name, :presence => true

  validates :phone_number, :presence => true

end
