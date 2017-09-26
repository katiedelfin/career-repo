class Responsibility < ApplicationRecord
  acts_as_taggable

  belongs_to :role

  validates :role, presence: true
  validates :text, presence: true
end
