class DropTable3 < ActiveRecord::Migration[7.0]
  def up
    drop_table :intitutions
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
