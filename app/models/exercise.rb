class Exercise < ApplicationRecord
  belongs_to :lesson
  has_many :questions
  has_many :metadata, :through => :questions
  has_many :answears, :through => :questions

  accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :metadata, allow_destroy: true, reject_if: :all_blank
end
