require "test_helper"

class RelojControlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reloj_control = reloj_controls(:one)
  end

  test "should get index" do
    get reloj_controls_url
    assert_response :success
  end

  test "should get new" do
    get new_reloj_control_url
    assert_response :success
  end

  test "should create reloj_control" do
    assert_difference('RelojControl.count') do
      post reloj_controls_url, params: { reloj_control: { caracteristicas: @reloj_control.caracteristicas, color: @reloj_control.color, link_imagen: @reloj_control.link_imagen, marca: @reloj_control.marca, modelo: @reloj_control.modelo } }
    end

    assert_redirected_to reloj_control_url(RelojControl.last)
  end

  test "should show reloj_control" do
    get reloj_control_url(@reloj_control)
    assert_response :success
  end

  test "should get edit" do
    get edit_reloj_control_url(@reloj_control)
    assert_response :success
  end

  test "should update reloj_control" do
    patch reloj_control_url(@reloj_control), params: { reloj_control: { caracteristicas: @reloj_control.caracteristicas, color: @reloj_control.color, link_imagen: @reloj_control.link_imagen, marca: @reloj_control.marca, modelo: @reloj_control.modelo } }
    assert_redirected_to reloj_control_url(@reloj_control)
  end

  test "should destroy reloj_control" do
    assert_difference('RelojControl.count', -1) do
      delete reloj_control_url(@reloj_control)
    end

    assert_redirected_to reloj_controls_url
  end
end
