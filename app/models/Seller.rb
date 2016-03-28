class Seller < ActiveRecord::Base
	has_many :listings
	has_secure_password
	before_save { self.email = email.downcase }
	validates :brand, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, length: {maximum: 105}, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
end