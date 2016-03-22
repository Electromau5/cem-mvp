class CreateListingsReviews < ActiveRecord::Migration
  def change
    create_table :listings_reviews, :id => false do |t|
      t.integer :listing_id
      t.integer :review_id
    end
  end
end
