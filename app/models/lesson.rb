class Lesson < ApplicationRecord
  belongs_to :grade
  belongs_to :discipline
  has_many :apostilles, dependent: :destroy
  has_one :exercise
  has_many :questions, :through => :exercise
  has_many :answears

  accepts_nested_attributes_for :apostilles, allow_destroy: true, reject_if: proc { |attributes| attributes['name'].blank? }
  accepts_nested_attributes_for :exercise, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :answears, reject_if: :all_blank

  paginates_per 6

  validates_presence_of :title
  validates_presence_of :content
  validates_presence_of :grade
  validates_presence_of :discipline

  has_attached_file :video, presence: true, :style => { medium: "300x300", thumb: "100x100" }, :size => { :in => 0..50.megabytes }
  has_attached_file :image, presence: true, :style => { medium: "300x300", thumb: "100x100" }, :size => { :in => 0..1.megabytes }
  validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
