class Profile < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader

  # validates_presence_of :responsible_name
  # validates_presence_of :responsible_email
  # validates_presence_of :responsible_phone
end
