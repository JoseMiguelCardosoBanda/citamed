require 'test_helper'

class CitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cita = cita(:one)
  end

  test "should get index" do
    get cita_index_url
    assert_response :success
  end

  test "should get new" do
    get new_cita_url
    assert_response :success
  end

  test "should create cita" do
    assert_difference('Cita.count') do
      post cita_index_url, params: { cita: { consultorio: @cita.consultorio, fecha_hora: @cita.fecha_hora, id_doctor: @cita.id_doctor, id_paciente: @cita.id_paciente, nombre_doctor: @cita.nombre_doctor, nombre_paciente: @cita.nombre_paciente } }
    end

    assert_redirected_to cita_url(Cita.last)
  end

  test "should show cita" do
    get cita_url(@cita)
    assert_response :success
  end

  test "should get edit" do
    get edit_cita_url(@cita)
    assert_response :success
  end

  test "should update cita" do
    patch cita_url(@cita), params: { cita: { consultorio: @cita.consultorio, fecha_hora: @cita.fecha_hora, id_doctor: @cita.id_doctor, id_paciente: @cita.id_paciente, nombre_doctor: @cita.nombre_doctor, nombre_paciente: @cita.nombre_paciente } }
    assert_redirected_to cita_url(@cita)
  end

  test "should destroy cita" do
    assert_difference('Cita.count', -1) do
      delete cita_url(@cita)
    end

    assert_redirected_to cita_index_url
  end
end
