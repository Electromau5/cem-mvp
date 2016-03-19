class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.string :title
    	t.string :ft1
    	t.text :f1
    	t.string :ft2
    	t.text :f2
    	t.string :ft3
    	t.text :f3
    	t.string :ft4
    	t.text :f4
    	t.string :ft5
    	t.text :f5
    	t.string :st1
    	t.string :s1
    	t.string :st2
    	t.string :s2
    	t.string :st3
    	t.string :s3
    	t.string :st4
    	t.string :s4
    	t.string :st5
    	t.string :s5
    	t.attachment :image
    	t.timestamps
    end
  end
end
