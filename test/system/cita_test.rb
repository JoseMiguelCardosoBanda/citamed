require "application_system_test_case"

class CitaTest < ApplicationSystemTestCase
  setup do
    @cita = cita(:one)
  end

  test "visiting the index" do
    visit cita_url
    assert_selector "h1", text: "Cita"
  end

  test "creating a Cita" do
    visit cita_url
    click_on "New Cita"

    fill_in "Consultorio", with: @cita.consultorio
    fill_in "Fecha hora", with: @cita.fecha_hora
    fill_in "Id doctor", with: @cita.id_doctor
    fill_in "Id paciente", with: @cita.id_paciente
    fill_in "Nombre doctor", with: @cita.nombre_doctor
    fill_in "Nombre paciente", with: @cita.nombre_paciente
    click_on "Create Cita"

    assert_text "Cita was successfully created"
    click_on "Back"
  end

  test "updating a Cita" do
    visit cita_url
    click_on "Edit", match: :first

    fill_in "Consultorio", with: @cita.consultorio
    fill_in "Fecha hora", with: @cita.fecha_hora
    fill_in "Id doctor", with: @cita.id_doctor
    fill_in "Id paciente", with: @cita.id_paciente
    fill_in "Nombre doctor", with: @cita.nombre_doctor
    fill_in "Nombre paciente", with: @cita.nombre_paciente
    click_on "Update Cita"

    assert_text "Cita was successfully updated"
    click_on "Back"
  end

  test "destroying a Cita" do
    visit cita_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cita was successfully destroyed"
  end
end
