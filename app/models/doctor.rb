class Doctor < ApplicationRecord
  validates :nombre, presence: true, presence: { message: "No puede dejar en blanco el campo de Nombre"}
  validates :especialidad, presence: true, presence: { message: "No puede dejar en blanco el campo de Especialidad"}
  validates :no_cedula, presence: true, length: { minimum: 8, message: "El No. Cedula es muy corto (Debe tener minimo 8 caracteres)" }, presence: { message: "No puede dejar en blanco el campo de No. Cedula"}
  validates :no_cedula, length: { maximum: 8, message: "El No. Cedula es muy largo (Debe tener maximo 8 caracteres)" }
  validates :consultorio, presence: true, presence: { message: "No puede dejar en blanco el campo de Consultorio"}
end
