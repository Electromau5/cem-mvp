class User < ActiveRecord::Base
	
	validates :username, presence: true,
	length: { minimum: 3, maximum: 25 },
	uniqueness: { case_sensitive: false }
	
	validates :storename,
	uniqueness: { case_sensitive: false },
	length: { minimum: 3, maximum: 25 }
	
	validates :description,
	uniqueness: { case_sensitive: false },
	length: { minimum: 50, maximum: 500 }

	validates :location,
	uniqueness: { case_sensitive: false },
	length: { minimum: 3, maximum: 25 }
	
	has_secure_password
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	validates :email, presence: true, length: { maximum: 105 },
	uniqueness: { case_sensitive: false },
	format: { with: VALID_EMAIL_REGEX }
	
	ratyrate_rater
end