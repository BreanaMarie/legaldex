class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
