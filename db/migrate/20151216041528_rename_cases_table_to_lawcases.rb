class RenameCasesTableToLawcases < ActiveRecord::Migration
  def change
    rename_table :cases, :lawcases
  end
end
