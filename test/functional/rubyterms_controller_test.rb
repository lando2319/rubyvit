require 'test_helper'

class RubytermsControllerTest < ActionController::TestCase
  setup do
    @rubyterm = rubyterms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rubyterms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rubyterm" do
    assert_difference('Rubyterm.count') do
      post :create, rubyterm: { rubyterm: @rubyterm.rubyterm }
    end

    assert_redirected_to rubyterm_path(assigns(:rubyterm))
  end

  test "should show rubyterm" do
    get :show, id: @rubyterm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rubyterm
    assert_response :success
  end

  test "should update rubyterm" do
    put :update, id: @rubyterm, rubyterm: { rubyterm: @rubyterm.rubyterm }
    assert_redirected_to rubyterm_path(assigns(:rubyterm))
  end

  test "should destroy rubyterm" do
    assert_difference('Rubyterm.count', -1) do
      delete :destroy, id: @rubyterm
    end

    assert_redirected_to rubyterms_path
  end
end
