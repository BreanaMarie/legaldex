class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :contact1
      t.string :contact2
      t.text :role
      t.text :profile
      t.string :image
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :fax
      t.string :email

      t.timestamps null: false
    end
  end
end
