class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :user_id
      t.string :practice_id

      t.timestamps null: false
    end
  end
end
