class Paciente < ApplicationRecord
  validates :nombre, presence: true, presence: { message: "No puede dejar en blanco el campo de Nombre"}
  validates :edad, presence: true, presence: { message: "No puede dejar en blanco el campo de Edad"}
  validates :edad, length: { maximum: 2, message: "El No. Seguro es muy largo (Debe tener maximo 2 caracteres)" }
  validates :num_seguro, presence: true, length: { minimum: 11, message: "El No. Seguro es muy corto (Debe tener minimo 11 caracteres)" }, presence: { message: "No puede dejar en blanco el campo de No. Seguro"}
  validates :num_seguro, length: { maximum: 11, message: "El No. Seguro es muy largo (Debe tener maximo 11 caracteres)" }
  validates :direccion, presence: true, presence: { message: "No puede dejar en blanco el campo de Direccion"}
  validates :telefono, presence: true, length: { minimum: 10, message: "El Numero de Telefono es muy corto (Debe tener minimo 10 caracteres)" }, presence: { message: "No puede dejar en blanco el campo de Telefono"}
  validates :telefono, length: { maximum: 10, message: "El Telefono es muy largo (Debe tener maximo 10 caracteres)" }
  validates :contacto_dos, presence: true, length: { minimum: 10, message: "El Segundo Contacto es muy corto (Debe tener minimo 10 caracteres)" }, presence: { message: "No puede dejar en blanco el campo de Segundo Contacto"}
  validates :contacto_dos, length: { maximum: 10, message: "El Segundo Contacto es muy largo (Debe tener maximo 10 caracteres)" }
  validates :curp, presence: true, length: { minimum: 18, message: "La Curp es muy corto (Debe tener minimo 18 caracteres)" }, presence: { message: "No puede dejar en blanco el campo de Curp"}
  validates :curp, length: { maximum: 18, message: "El Curp es muy largo (Debe tener maximo 18 caracteres)" }
end
