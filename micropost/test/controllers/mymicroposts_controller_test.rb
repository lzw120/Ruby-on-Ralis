require 'test_helper'

class MymicropostsControllerTest < ActionController::TestCase
  setup do
    @mymicropost = mymicroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mymicroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mymicropost" do
    assert_difference('Mymicropost.count') do
      post :create, mymicropost: { content: @mymicropost.content, user_id: @mymicropost.user_id }
    end

    assert_redirected_to mymicropost_path(assigns(:mymicropost))
  end

  test "should show mymicropost" do
    get :show, id: @mymicropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mymicropost
    assert_response :success
  end

  test "should update mymicropost" do
    patch :update, id: @mymicropost, mymicropost: { content: @mymicropost.content, user_id: @mymicropost.user_id }
    assert_redirected_to mymicropost_path(assigns(:mymicropost))
  end

  test "should destroy mymicropost" do
    assert_difference('Mymicropost.count', -1) do
      delete :destroy, id: @mymicropost
    end

    assert_redirected_to mymicroposts_path
  end
end
