require 'test_helper'

class SessaosControllerTest < ActionController::TestCase
  setup do
    @sessao = sessaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sessaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sessao" do
    assert_difference('Sessao.count') do
      post :create, sessao: { descricao: @sessao.descricao, questionario_id: @sessao.questionario_id, sigla: @sessao.sigla }
    end

    assert_redirected_to sessao_path(assigns(:sessao))
  end

  test "should show sessao" do
    get :show, id: @sessao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sessao
    assert_response :success
  end

  test "should update sessao" do
    patch :update, id: @sessao, sessao: { descricao: @sessao.descricao, questionario_id: @sessao.questionario_id, sigla: @sessao.sigla }
    assert_redirected_to sessao_path(assigns(:sessao))
  end

  test "should destroy sessao" do
    assert_difference('Sessao.count', -1) do
      delete :destroy, id: @sessao
    end

    assert_redirected_to sessaos_path
  end
end
