class Doctor < ApplicationRecord
  belongs_to :speciality
  has_one :user, as: :profile

  validates :description, presence: true
end
