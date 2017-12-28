class User < ApplicationRecord
  enum role: [:student, :vip, :admin]
  # after_initialize :set_default_role, :check_profile, :if => :new_record?
  after_initialize :set_default_role, :if => :new_record?

  has_one :profile, :dependent => :destroy
  accepts_nested_attributes_for :profile, reject_if: :all_blank

  after_create :create_profile

  def set_default_role
    self.role ||= :student
  end

  def active_for_authentication?
    super and self.paid
  end

  def inactive_message
    "Por favor, use o link #{self.payment_link} para pagar e ativar sua conta!"
  end

  private
    def create_profile
      Profile.create(:user_id => self.id)
    end

  # def check_profile
  #   a = Profile.where(:user_id => self.id)
  #
  #   if a.blank?
  #     Profile.create(:user_id => self.id)
  #   end
  # end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable
end
