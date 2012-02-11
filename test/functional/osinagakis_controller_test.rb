require 'test_helper'

class OsinagakisControllerTest < ActionController::TestCase
  setup do
    @osinagaki = osinagakis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:osinagakis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create osinagaki" do
    assert_difference('Osinagaki.count') do
      post :create, osinagaki: @osinagaki.attributes
    end

    assert_redirected_to osinagaki_path(assigns(:osinagaki))
  end

  test "should show osinagaki" do
    get :show, id: @osinagaki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @osinagaki
    assert_response :success
  end

  test "should update osinagaki" do
    put :update, id: @osinagaki, osinagaki: @osinagaki.attributes
    assert_redirected_to osinagaki_path(assigns(:osinagaki))
  end

  test "should destroy osinagaki" do
    assert_difference('Osinagaki.count', -1) do
      delete :destroy, id: @osinagaki
    end

    assert_redirected_to osinagakis_path
  end
end
