class Doctor < ApplicationRecord
  belongs_to :speciality
  has_one :user, as: :profile

  validates :first_name, :last_name, :description, presence: true
end
