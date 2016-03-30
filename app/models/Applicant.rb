class Applicant < ActiveRecord::Base
	validates :brand, :email, :description, :location, :product, :category, :site, presence: true
	validates :description, length: { minimum: 25, maximum: 150 }	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, length: {maximum: 105}, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
end