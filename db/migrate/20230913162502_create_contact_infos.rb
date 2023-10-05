class CreateContactInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_infos do |t|
      t.references  :user
      t.string      :name
      t.string      :address1
      t.string      :address2
      t.string      :phone
      t.string      :city
      t.string      :state
      t.string      :postal_code
      t.timestamps
    end
  end
end
