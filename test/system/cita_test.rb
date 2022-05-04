require "application_system_test_case"

class CitaTest < ApplicationSystemTestCase
  setup do
    @citum = cita(:one)
  end

  test "visiting the index" do
    visit cita_url
    assert_selector "h1", text: "Cita"
  end

  test "creating a Citum" do
    visit cita_url
    click_on "New Citum"

    fill_in "Consultorio", with: @citum.consultorio
    fill_in "Fecha hora", with: @citum.fecha_hora
    fill_in "Id doctor", with: @citum.id_doctor
    fill_in "Id paciente", with: @citum.id_paciente
    fill_in "Nombre doctor", with: @citum.nombre_doctor
    fill_in "Nombre paciente", with: @citum.nombre_paciente
    click_on "Create Citum"

    assert_text "Citum was successfully created"
    click_on "Back"
  end

  test "updating a Citum" do
    visit cita_url
    click_on "Edit", match: :first

    fill_in "Consultorio", with: @citum.consultorio
    fill_in "Fecha hora", with: @citum.fecha_hora
    fill_in "Id doctor", with: @citum.id_doctor
    fill_in "Id paciente", with: @citum.id_paciente
    fill_in "Nombre doctor", with: @citum.nombre_doctor
    fill_in "Nombre paciente", with: @citum.nombre_paciente
    click_on "Update Citum"

    assert_text "Citum was successfully updated"
    click_on "Back"
  end

  test "destroying a Citum" do
    visit cita_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citum was successfully destroyed"
  end
end
