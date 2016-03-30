class CreateApplicant < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
    	t.string :brand
    	t.string :email
    	t.string :location
    	t.text :description
    	t.string :category
    	t.text :product
    	t.string :site
    	t.timestamps
    end
  end
end
