class Grade < ApplicationRecord
  belongs_to :config
  validates_presence_of :name, required: true
end
