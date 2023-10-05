class CreateResumeSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_skills do |t|
      t.references  :resume
      t.references  :skill
      t.integer     :grouping 
      t.timestamps
    end
  end
end
