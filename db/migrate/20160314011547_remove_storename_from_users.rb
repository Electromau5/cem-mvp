class RemoveStorenameFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :storenme
  end
end
