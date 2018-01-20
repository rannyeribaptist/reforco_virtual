class Dice < ApplicationRecord
  mount_uploader :image, AvatarUploader
  validates_presence_of :title
  validates_presence_of :content
end
