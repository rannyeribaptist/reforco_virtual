class Question < ApplicationRecord
  belongs_to :exercise
  has_many :metadata

  accepts_nested_attributes_for :metadata, allow_destroy: true, reject_if: :all_blank

  # validates_presence_of :answear, required: true
end
