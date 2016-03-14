class AddSellerToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :seller, :boolean, default: false
  	add_column :users, :storenme, :string
  	add_column :users,:location, :string
  	add_column :users,:description, :text
  end
 end
