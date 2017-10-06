class Profile < ApplicationRecord
  belongs_to :user

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ActionController::Base.helpers.asset_path("missing.png")
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/, less_than: 1.megabytes

  # validates_presence_of :responsible_name
  # validates_presence_of :responsible_email
  # validates_presence_of :responsible_phone
end
