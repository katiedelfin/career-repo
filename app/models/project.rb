class Project < ApplicationRecord
  acts_as_taggable

  belongs_to :role

  validates :title, presence: true
end
