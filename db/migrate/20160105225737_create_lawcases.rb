class CreateLawcases < ActiveRecord::Migration
  def change
    create_table :lawcases do |t|
      t.string :title
      t.string :internal_number
      t.string :case_number
      t.date :filed
      t.string :jurisdiction
      t.string :law_type
      t.string :case_status
      t.text :summary

      t.timestamps null: false
    end
  end
end
