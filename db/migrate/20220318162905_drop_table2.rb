class DropTable2 < ActiveRecord::Migration[7.0]
  def up
    drop_table :institutions
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
