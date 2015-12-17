class CreateUsedexperts < ActiveRecord::Migration
  def change
    create_table :usedexperts do |t|

      t.timestamps null: false
    end
  end
end
