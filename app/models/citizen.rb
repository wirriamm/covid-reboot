class Citizen < ApplicationRecord
  has_many :appointments
  has_many :clinics, through: :appointments

  validates :email, presence: true, format: { with: /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i }, uniqueness: true
  validates :password, presence: true
  validates :postal_code, presence: true
  validates :nric, format: { with: /\A[STFG]\d{7}[A-Z]\z/ }, presence: true, uniqueness: true
end
