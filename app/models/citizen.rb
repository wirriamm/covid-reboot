class Citizen < ApplicationRecord
  has_many :appointments
  has_many :clinics, through: :appointments

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :postal_code, presence: true

end
