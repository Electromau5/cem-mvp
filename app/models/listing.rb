class Listing < ActiveRecord::Base
	validates :name,presence: :true, length: { minimum: 10, maximum: 50 } 
	validates :feature1,:feature2,:feature3, presence: :true, length: { minimum: 10, maximum: 500 }
  validates :price, presence: :true 
	has_attached_file :image, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70],  large:  
  	                ['1000>', :jpg, :quality => 70] }
  has_attached_file :image2, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70],  large:  
  	                ['1000>', :jpg, :quality => 70] }
  has_attached_file :image3, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70],  large:  
  	                ['1000>', :jpg, :quality => 70] }
  has_attached_file :image4, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70],  large:  
  	                ['1000>', :jpg, :quality => 70] }	    
  has_attached_file :image5, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70],  large:  
  	                ['1000>', :jpg, :quality => 70] }                           
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image3, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image4, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image5, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_and_belongs_to_many :reviews
end