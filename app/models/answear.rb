class Answear < ApplicationRecord
  belongs_to :lesson
  has_one :profile
  has_one :metadatum
  has_one :question

  validates_presence_of :value, required: true
end