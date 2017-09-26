class Project < ApplicationRecord
  belongs_to :role

  validates :title, presence: true
end
