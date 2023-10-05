class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_many :resumes
  has_many :contact_infos
  has_many :jobs
  has_many :links
  has_many :layouts


  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "first_name", "id", "last_name", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end

end
