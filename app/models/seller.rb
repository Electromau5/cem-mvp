class Seller < ActiveRecord::Base
	validates :sellername, presence: true,
	uniqueness: { case_sensitive: false },
	length: { minimum: 3, maximum: 25 }
	validates :storename, presence: true,
	uniqueness: { case_sensitive: false },
	length: { minimum: 3, maximum: 25 }
	validates :description,presence: true,
	uniqueness: { case_sensitive: false },
	length: { minimum: 50, maximum: 500 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 105 },
	uniqueness: { case_sensitive: false },
	format: { with: VALID_EMAIL_REGEX }
	has_secure_password
	#has_many :listings, dependent: :destroy
end