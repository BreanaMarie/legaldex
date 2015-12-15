class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :name
      t.text :profile
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :fax
      t.string :image

      t.timestamps null: false
    end
  end
end
