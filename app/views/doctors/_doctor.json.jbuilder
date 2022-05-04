json.extract! doctor, :id, :nombre, :especialidad, :no_cedula, :consultorio, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
