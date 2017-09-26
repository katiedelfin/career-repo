class Role < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true
end
