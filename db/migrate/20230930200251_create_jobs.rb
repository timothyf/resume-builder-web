class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.references :user
      t.string        :title
      t.string        :company
      t.string        :city
      t.string        :state
      t.string        :start_year
      t.string        :start_month
      t.string        :end_year
      t.string        :end_month
      t.text          :description
      t.timestamps
    end
  end
end
