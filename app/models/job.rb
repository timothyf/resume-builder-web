class Job < ApplicationRecord

  belongs_to :user
  has_many :resume_jobs
  has_many :resumes, through: :resume_jobs

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "title", "company", "city", "state", "start_year", "start_month", "end_year", "end_month", "description", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["resume_jobs", "resumes", "user"]
  end

end
