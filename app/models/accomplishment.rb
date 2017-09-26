class Accomplishment < ApplicationRecord
  belongs_to :role

  validates :role, presence: true
  validates :text, presence: true
end
