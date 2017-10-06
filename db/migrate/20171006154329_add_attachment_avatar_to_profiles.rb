class AddAttachmentAvatarToProfiles < ActiveRecord::Migration[5.1]
  def up
    add_attachment :profiles, :avatar
  end
end
