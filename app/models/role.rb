class Role < ApplicationRecord
  belongs_to :user
  has_many :responsibilities

  validates :user, presence: true
  validates :title, presence: true
end
