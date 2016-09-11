class AddAttachmentImageToFarms < ActiveRecord::Migration
  def self.up
    change_table :farms do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :farms, :image
  end
end
