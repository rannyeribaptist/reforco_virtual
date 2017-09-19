class Profile < ApplicationRecord
  belongs_to :user

  # validates_presence_of :responsible_name
  # validates_presence_of :responsible_email
  # validates_presence_of :responsible_phone
end
