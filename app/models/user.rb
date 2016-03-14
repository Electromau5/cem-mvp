class User < ActiveRecord::Base
<<<<<<< HEAD
	validates :username, presence: true,
	length: { minimum: 3, maximum: 25 },
	uniqueness: { case_sensitive: false }
=======
	validates :username, presence: true, 
	uniqueness: { case_sensitive: false }, 
	length: { minimum: 3, maximum: 25 }
>>>>>>> master
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 105 },
	uniqueness: { case_sensitive: false },
	format: { with: VALID_EMAIL_REGEX }
	has_secure_password
	ratyrate_rater
end