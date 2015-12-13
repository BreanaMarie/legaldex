class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :company
      t.string :title
      t.date :time_in_field
      t.string :email
      t.string :address
      t.string :phone
      t.string :phone2
      t.string :city
      t.string :state
      t.string :zipcode
      t.text :bio
      t.string :image

      t.timestamps null: false
    end
  end
end
