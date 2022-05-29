class Cita < ApplicationRecord
  validates :id_paciente, presence: true, presence: { message: "No puede dejar en blanco el campo de Id Paciente"}
  validates :nombre_paciente, presence: true, presence: { message: "No puede dejar en blanco el campo de Nombre del paciente"}
  validates :id_doctor, presence: true, presence: { message: "No puede dejar en blanco el campo de Id Doctor"}
  validates :nombre_doctor, presence: true, presence: { message: "No puede dejar en blanco el campo de Nombre del doctor"}
  validates :consultorio, presence: true, presence: { message: "No puede dejar en blanco el campo de Consultorio"}

end
