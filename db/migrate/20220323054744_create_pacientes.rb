class CreatePacientes < ActiveRecord::Migration[6.0]
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.integer :edad
      t.string :num_seguro
      t.string :direccion
      t.string :telefono
      t.string :contacto_dos
      t.date :fecha_nacimiento
      t.string :curp

      t.timestamps
    end
  end
end
