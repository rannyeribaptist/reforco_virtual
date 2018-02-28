class ProfileSession < ApplicationRecord
  has_one :profile
  belongs_to :user
end
