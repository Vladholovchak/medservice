class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable

  belongs_to :profile, polymorphic: true, optional: true

  enum role: [:patient, :doctor, :admin]

  after_initialize :set_default_role, if: :new_record?

  validates :phone, uniqueness: true, presence: true
  validates :first_name, :last_name, :role, presence: true

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end

  def set_default_role
    self.role ||= :patient
  end
end
