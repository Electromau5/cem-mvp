class CreateProduct1 < ActiveRecord::Migration
  def change
    create_table :product1s do |t|
    	t.string :title
    	t.text :feature1
    	t.text :feature2
    	t.text :feature3
    	t.text :feature4
    	t.text :feature5
    	t.string :spec1
    	t.string :spec2
    	t.string :spec3
    	t.string :spec4
    	t.string :spec5
    	t.timestamps
    end
  end
end
