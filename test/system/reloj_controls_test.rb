require "application_system_test_case"

class RelojControlsTest < ApplicationSystemTestCase
  setup do
    @reloj_control = reloj_controls(:one)
  end

  test "visiting the index" do
    visit reloj_controls_url
    assert_selector "h1", text: "Reloj Controls"
  end

  test "creating a Reloj control" do
    visit reloj_controls_url
    click_on "New Reloj Control"

    fill_in "Caracteristicas", with: @reloj_control.caracteristicas
    fill_in "Color", with: @reloj_control.color
    fill_in "Link imagen", with: @reloj_control.link_imagen
    fill_in "Marca", with: @reloj_control.marca
    fill_in "Modelo", with: @reloj_control.modelo
    click_on "Create Reloj control"

    assert_text "Reloj control was successfully created"
    click_on "Back"
  end

  test "updating a Reloj control" do
    visit reloj_controls_url
    click_on "Edit", match: :first

    fill_in "Caracteristicas", with: @reloj_control.caracteristicas
    fill_in "Color", with: @reloj_control.color
    fill_in "Link imagen", with: @reloj_control.link_imagen
    fill_in "Marca", with: @reloj_control.marca
    fill_in "Modelo", with: @reloj_control.modelo
    click_on "Update Reloj control"

    assert_text "Reloj control was successfully updated"
    click_on "Back"
  end

  test "destroying a Reloj control" do
    visit reloj_controls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reloj control was successfully destroyed"
  end
end
