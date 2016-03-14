class AddStorenameToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :storename, :string
  end
end
