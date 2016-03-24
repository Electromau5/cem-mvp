class AddSpecToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :spec, :string
  end
end
