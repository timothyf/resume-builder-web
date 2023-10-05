class ContactInfo < ApplicationRecord
  belongs_to :user
  has_many :resumes

  def self.ransackable_attributes(auth_object = nil)
    ["address1", "address2", "city", "created_at", "id", "name", "phone", "postal_code", "state", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["resumes", "user"]
  end

end
