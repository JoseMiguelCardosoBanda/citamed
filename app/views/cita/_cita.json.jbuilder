json.extract! cita, :id, :id_paciente, :nombre_paciente, :id_doctor, :nombre_doctor, :consultorio, :fecha_hora, :created_at, :updated_at
json.url cita_url(cita, format: :json)
