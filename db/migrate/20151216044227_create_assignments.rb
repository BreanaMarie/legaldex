class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :lawcase_id
      t.integer :practice_id

      t.timestamps null: false
    end
  end
end
