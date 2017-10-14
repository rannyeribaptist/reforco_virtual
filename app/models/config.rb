class Config < ApplicationRecord
  has_many :grades
  has_many :disciplines

  accepts_nested_attributes_for :grades, allow_destroy: true, :reject_if => :all_blank
  accepts_nested_attributes_for :disciplines, allow_destroy: true, :reject_if => :all_blank
end
