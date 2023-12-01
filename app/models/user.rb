class User < ApplicationRecord
  has_secure_password

  has_many :bookings, dependent: :destroy

  validates :loginname, presence: true, uniqueness: true
  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: false
  
end
