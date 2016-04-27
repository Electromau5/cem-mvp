class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name
    	t.decimal :price
    	t.text :feature1
    	t.text :feature2
    	t.text :feature3
    	t.string :site
    	t.attachment :image
    	t.attachment :image2
    	t.attachment :image3
    	t.attachment :image4
    	t.attachment :image5
    end
  end
end
