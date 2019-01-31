require 'test_helper'

class PensionersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pensioner = pensioners(:one)
  end

  test "should get index" do
    get pensioners_url
    assert_response :success
  end

  test "should get new" do
    get new_pensioner_url
    assert_response :success
  end

  test "should create pensioner" do
    assert_difference('Pensioner.count') do
      post pensioners_url, params: { pensioner: { fecha_oficio: @pensioner.fecha_oficio, fecha_recepcion: @pensioner.fecha_recepcion, numero_juicio: @pensioner.numero_juicio, numero_oficio: @pensioner.numero_oficio, promovente: @pensioner.promovente, turnado: @pensioner.turnado, turno: @pensioner.turno } }
    end

    assert_redirected_to pensioner_url(Pensioner.last)
  end

  test "should show pensioner" do
    get pensioner_url(@pensioner)
    assert_response :success
  end

  test "should get edit" do
    get edit_pensioner_url(@pensioner)
    assert_response :success
  end

  test "should update pensioner" do
    patch pensioner_url(@pensioner), params: { pensioner: { fecha_oficio: @pensioner.fecha_oficio, fecha_recepcion: @pensioner.fecha_recepcion, numero_juicio: @pensioner.numero_juicio, numero_oficio: @pensioner.numero_oficio, promovente: @pensioner.promovente, turnado: @pensioner.turnado, turno: @pensioner.turno } }
    assert_redirected_to pensioner_url(@pensioner)
  end

  test "should destroy pensioner" do
    assert_difference('Pensioner.count', -1) do
      delete pensioner_url(@pensioner)
    end

    assert_redirected_to pensioners_url
  end
end
