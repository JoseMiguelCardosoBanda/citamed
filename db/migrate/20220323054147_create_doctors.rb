class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :nombre
      t.string :especialidad
      t.string :no_cedula
      t.integer :consultorio

      t.timestamps
    end
  end
end
