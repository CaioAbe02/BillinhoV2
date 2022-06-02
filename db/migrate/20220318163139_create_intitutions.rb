class CreateIntitutions < ActiveRecord::Migration[7.0]
  def change
    create_table :intitutions do |t|
      t.string :name
      t.string :cnpj
      t.string :institution_type

      t.timestamps
    end
  end
end
