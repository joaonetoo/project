require 'test_helper'

class MarcosControllerTest < ActionController::TestCase
  setup do
    @marco = marcos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marcos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marco" do
    assert_difference('Marco.count') do
      post :create, marco: { descricao: @marco.descricao, sigla: @marco.sigla, topico_id: @marco.topico_id }
    end

    assert_redirected_to marco_path(assigns(:marco))
  end

  test "should show marco" do
    get :show, id: @marco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marco
    assert_response :success
  end

  test "should update marco" do
    patch :update, id: @marco, marco: { descricao: @marco.descricao, sigla: @marco.sigla, topico_id: @marco.topico_id }
    assert_redirected_to marco_path(assigns(:marco))
  end

  test "should destroy marco" do
    assert_difference('Marco.count', -1) do
      delete :destroy, id: @marco
    end

    assert_redirected_to marcos_path
  end
end
