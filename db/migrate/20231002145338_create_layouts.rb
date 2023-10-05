class CreateLayouts < ActiveRecord::Migration[7.0]
  def change
    create_table :layouts do |t|
      t.references    :user
      t.string        :content
      t.string        :name 

      t.timestamps
    end
  end
end
