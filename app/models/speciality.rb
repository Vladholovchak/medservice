class Speciality < ApplicationRecord
  has_many :doctors

  validates :name, presence: true, uniqueness: true
end
