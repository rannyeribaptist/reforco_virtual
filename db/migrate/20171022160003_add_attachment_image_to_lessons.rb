class AddAttachmentImageToLessons < ActiveRecord::Migration[5.1]
  def self.up
    change_table :lessons do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :lessons, :image
  end
end
