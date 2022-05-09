class CreateCita < ActiveRecord::Migration[6.0]
  def change
    create_table :cita do |t|
      t.integer :id_paciente
      t.string :nombre_paciente
      t.integer :id_doctor
      t.string :nombre_doctor
      t.integer :consultorio
      t.datetime :fecha_hora

      t.timestamps
    end
  end
end
