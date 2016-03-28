class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
    	t.string :brand
    	t.string :email
    	t.string :location
    	t.text :description
    	t.timestamps
    end
  end
end
