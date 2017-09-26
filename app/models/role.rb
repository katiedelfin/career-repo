class Role < ApplicationRecord
  belongs_to :user
  has_many :responsibilities

  accepts_nested_attributes_for :responsibilities, allow_destroy: true

  validates :user, presence: true
  validates :title, presence: true
end
