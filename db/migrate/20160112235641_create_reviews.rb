class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :expert_id
      t.integer :rate
      t.text :opinion

      t.timestamps null: false
    end
  end
end
