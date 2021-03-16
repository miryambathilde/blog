class CreateArticulos < ActiveRecord::Migration[6.1]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :contenido
      t.references :autor, null: false, index: true, foreign_key: true

      t.timestamps 
    end
  end
end
