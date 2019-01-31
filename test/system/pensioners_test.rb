require "application_system_test_case"

class PensionersTest < ApplicationSystemTestCase
  setup do
    @pensioner = pensioners(:one)
  end

  test "visiting the index" do
    visit pensioners_url
    assert_selector "h1", text: "Pensioners"
  end

  test "creating a Pensioner" do
    visit pensioners_url
    click_on "New Pensioner"

    fill_in "Fecha oficio", with: @pensioner.fecha_oficio
    fill_in "Fecha recepcion", with: @pensioner.fecha_recepcion
    fill_in "Numero juicio", with: @pensioner.numero_juicio
    fill_in "Numero oficio", with: @pensioner.numero_oficio
    fill_in "Promovente", with: @pensioner.promovente
    fill_in "Turnado", with: @pensioner.turnado
    fill_in "Turno", with: @pensioner.turno
    click_on "Create Pensioner"

    assert_text "Pensioner was successfully created"
    click_on "Back"
  end

  test "updating a Pensioner" do
    visit pensioners_url
    click_on "Edit", match: :first

    fill_in "Fecha oficio", with: @pensioner.fecha_oficio
    fill_in "Fecha recepcion", with: @pensioner.fecha_recepcion
    fill_in "Numero juicio", with: @pensioner.numero_juicio
    fill_in "Numero oficio", with: @pensioner.numero_oficio
    fill_in "Promovente", with: @pensioner.promovente
    fill_in "Turnado", with: @pensioner.turnado
    fill_in "Turno", with: @pensioner.turno
    click_on "Update Pensioner"

    assert_text "Pensioner was successfully updated"
    click_on "Back"
  end

  test "destroying a Pensioner" do
    visit pensioners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pensioner was successfully destroyed"
  end
end
