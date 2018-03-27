require 'test_helper'

class SermaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sermao = sermaos(:one)
  end

  test "should get index" do
    get sermaos_url
    assert_response :success
  end

  test "should get new" do
    get new_sermao_url
    assert_response :success
  end

  test "should create sermao" do
    assert_difference('Sermao.count') do
      post sermaos_url, params: { sermao: { descricao: @sermao.descricao, local: @sermao.local, pregador: @sermao.pregador, titulo: @sermao.titulo } }
    end

    assert_redirected_to sermao_url(Sermao.last)
  end

  test "should show sermao" do
    get sermao_url(@sermao)
    assert_response :success
  end

  test "should get edit" do
    get edit_sermao_url(@sermao)
    assert_response :success
  end

  test "should update sermao" do
    patch sermao_url(@sermao), params: { sermao: { descricao: @sermao.descricao, local: @sermao.local, pregador: @sermao.pregador, titulo: @sermao.titulo } }
    assert_redirected_to sermao_url(@sermao)
  end

  test "should destroy sermao" do
    assert_difference('Sermao.count', -1) do
      delete sermao_url(@sermao)
    end

    assert_redirected_to sermaos_url
  end
end
