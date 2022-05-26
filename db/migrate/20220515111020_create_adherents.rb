class CreateAdherents < ActiveRecord::Migration[7.0]
  def change
    create_table :adherents do |t|
      t.string :prenom, null: false
      t.string :nom, null: false
      t.string :statut, null: false
      t.string :password, null: false

      t.timestamps
    end
  end
end
