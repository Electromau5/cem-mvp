class Product1 < ActiveRecord::Base
has_attached_file :image, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70], large:  
  	                ['600>', :jpg, :quality => 70] }
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
ratyrate_rateable 'print_quality', 'ease_of_use', 'reliability', 'running_expenses', 'value_for_money'
end