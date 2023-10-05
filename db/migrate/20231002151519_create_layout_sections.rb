class CreateLayoutSections < ActiveRecord::Migration[7.0]
  def change
    create_table :layout_sections do |t|
      t.string        :name
      t.string        :display_name
      t.string        :template 
      t.timestamps
    end
  end
end
