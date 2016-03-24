class AddRatingToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :rating1, :integer
    add_column :reviews, :rating2, :integer
    add_column :reviews, :rating3, :integer
    add_column :reviews, :rating4, :integer
    add_column :reviews, :rating5, :integer
  end
end
