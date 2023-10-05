class ResumeJob < ApplicationRecord
  belongs_to :resume
  belongs_to :job

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["resume", "job"]
  end

end
