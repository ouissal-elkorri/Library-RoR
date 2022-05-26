class CreateMateriels < ActiveRecord::Migration[7.0]
  def change
    create_table :materiels do |t|
      t.string :name
      t.string :disponibilte
      t.string :etat

      t.timestamps
    end
  end
end
