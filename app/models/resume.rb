class Resume < ApplicationRecord
  belongs_to :user
  belongs_to :contact_info
  has_many :resume_skills
  has_many :skills, through: :resume_skills
  has_many :resume_jobs
  has_many :jobs, through: :resume_jobs

  def self.ransackable_attributes(auth_object = nil)
    ["name", "created_at", "id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["jobs", "resume_skills", "resume_jobs", "skills", "user", "contact_info"]
  end

end
