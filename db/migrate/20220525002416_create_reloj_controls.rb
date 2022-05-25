class CreateRelojControls < ActiveRecord::Migration[6.1]
  def change
    create_table :reloj_controls do |t|
      t.string :marca
      t.string :modelo
      t.string :color
      t.text :caracteristicas
      t.text :image

      t.timestamps
    end
  end
end
