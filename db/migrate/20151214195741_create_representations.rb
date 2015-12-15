class CreateRepresentations < ActiveRecord::Migration
  def change
    create_table :representations do |t|
      t.integer :company_id
      t.integer :case_id
      t.integer :firm_id
      t.string :attorney
      t.string :role

      t.timestamps null: false
    end
  end
end
