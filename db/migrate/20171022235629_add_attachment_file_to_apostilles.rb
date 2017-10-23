class AddAttachmentFileToApostilles < ActiveRecord::Migration[5.1]
  def self.up
    change_table :apostilles do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :apostilles, :file
  end
end
