class CreateUsedExperts < ActiveRecord::Migration
  def change
    create_table :used_experts do |t|
      t.integer :case_id
      t.integer :expert_id

      t.timestamps null: false
    end
  end
end