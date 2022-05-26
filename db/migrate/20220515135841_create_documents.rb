class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.text :titre
      t.string :genre

      t.timestamps
    end
  end
end
