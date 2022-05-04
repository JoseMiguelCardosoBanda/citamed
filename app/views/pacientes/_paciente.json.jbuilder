json.extract! paciente, :id, :nombre, :edad, :num_seguro, :direccion, :telefono, :contacto_dos, :fecha_nacimiento, :curp, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
