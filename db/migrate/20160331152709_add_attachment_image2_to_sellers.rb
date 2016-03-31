class AddAttachmentImage2ToSellers < ActiveRecord::Migration
  def self.up
    change_table :sellers do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :sellers, :image2
  end
end
