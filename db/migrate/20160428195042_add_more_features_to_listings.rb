class AddMoreFeaturesToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :feature4, :text
  	add_column :listings, :feature5, :text
  	add_column :listings, :cod, :string
  	add_column :listings, :time, :string
  	add_column :listings, :description, :text
  	add_column :listings, :technical, :text 
  end
end
