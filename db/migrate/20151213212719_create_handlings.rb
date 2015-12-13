class CreateHandlings < ActiveRecord::Migration
  def change
    create_table :handlings do |t|
      t.integer :case_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
