class AddCategoryToSellers < ActiveRecord::Migration
  def change
  	add_column :sellers, :category, :text
  end
end
