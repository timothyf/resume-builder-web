class CreateResumeJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_jobs do |t|
      t.references :resume
      t.references :job 
      t.timestamps
    end
  end
end
