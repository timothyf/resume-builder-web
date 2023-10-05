class CreateResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :resumes do |t|
      t.references  :user
      t.references  :contact_info
      t.string      :name 
      t.timestamps
    end
  end
end
