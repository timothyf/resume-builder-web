class Link < ApplicationRecord

  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    ["name", "url", "created_at", "id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end

end
