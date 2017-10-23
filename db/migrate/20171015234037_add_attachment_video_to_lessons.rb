class AddAttachmentVideoToLessons < ActiveRecord::Migration[5.1]
  def self.up
    change_table :lessons do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :lessons, :video
  end
end
