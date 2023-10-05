class ResumeSkill < ApplicationRecord
  belongs_to :resume
  belongs_to :skill

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "resume_id", "skill_id", "updated_at"]
  end
  
end
