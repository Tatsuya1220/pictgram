class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
  validates :password, length: { minimum: 8, maximum: 32 }
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  
  VALID_EMAIL_REGEX = /\A[\w+-.]+@[a-z.\d]+.[a-z]+\z/i
  validates :email, format: { wish: VALID_EMAIL_REGEX }
  validates :name, length: {maximum: 15 }
  has_secure_password
end
