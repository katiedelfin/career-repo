class Role < ApplicationRecord
  belongs_to :user
  has_many :responsibilities
  has_many :accomplishments
  has_many :projects

  accepts_nested_attributes_for :responsibilities, allow_destroy: true
  accepts_nested_attributes_for :accomplishments, allow_destroy: true
  accepts_nested_attributes_for :projects, allow_destroy: true

  validates :user, presence: true
  validates :title, presence: true

  def filtered_responsibilities(tags = [])
    if tags.any?
      responsibilities.tagged_with(tags, any: true)
    else
      responsibilities
    end
  end

  def filtered_accomplishments(tags = [])
    if tags.any?
      accomplishments.tagged_with(tags, any: true)
    else
      accomplishments
    end
  end

  def filtered_projects(tags = [])
    if tags.any?
      projects.tagged_with(tags, any: true)
    else
      projects
    end
  end
end
