class Skill < ApplicationRecord
  belongs_to :user
  has_many :resume_skills
  has_many :resumes, through: :resume_skills

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "category", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["resume_skills", "resumes", "user"]
  end

end
