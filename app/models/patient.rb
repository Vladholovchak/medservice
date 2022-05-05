class Patient < ApplicationRecord
  has_one :user, as: :profile

  validates :first_name, :last_name, presence: true
end
