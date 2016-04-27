class AddReviewIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :review_id, :integer
    add_index :products, :review_id
  end
end
