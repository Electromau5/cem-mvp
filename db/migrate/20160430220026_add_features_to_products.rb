class AddFeaturesToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :seller_id, :integer
	add_column :products, :feature4, :text
	add_column :products, :feature5, :text
	add_column :products, :cod, :string
	add_column :products, :time, :string
	add_column :products, :description, :text
	add_column :products, :technical, :text
  end
end
