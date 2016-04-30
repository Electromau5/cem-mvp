class Seller < ActiveRecord::Base
	has_many :listings
	has_many :products
	has_secure_password
	validates :brand, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, length: { minimum:5, maximum: 105 }, uniqueness: { case_sensitive: false }, 
			  format: { with: VALID_EMAIL_REGEX }
	before_save { self.email = email.downcase }
	has_attached_file :image, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70],  large:  
  	                ["1000>", :jpg, :quality => 70] }                           
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    has_attached_file :image2, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70],  large:  
  	                ["1000>", :jpg, :quality => 70] }                           
    validates_attachment_content_type :image2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
