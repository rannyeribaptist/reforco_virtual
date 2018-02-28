class Profile < ApplicationRecord
  belongs_to :user
  # belongs_to :profile_session

  mount_uploader :avatar, AvatarUploader  
end
