class RemoveSellerIdFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :seller_id
  end
end
