class AddAttachmentImageToProduct1s < ActiveRecord::Migration
  def self.up
    change_table :product1s do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :product1s, :image
  end
end
