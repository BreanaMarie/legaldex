class CreateUsedexperts < ActiveRecord::Migration
  def change
    create_table :usedexperts do |t|
      t.integer :lawcase_id
      t.integer :expert_id
      t.integer :firm_id

      t.timestamps null: false
    end
  end
end
