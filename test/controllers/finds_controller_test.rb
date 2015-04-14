require 'test_helper'

class FindsControllerTest < ActionController::TestCase
  setup do
    @find = finds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create find" do
    assert_difference('Find.count') do
      post :create, find: { album_id: @find.album_id, photo: @find.photo, user_id: @find.user_id }
    end

    assert_redirected_to find_path(assigns(:find))
  end

  test "should show find" do
    get :show, id: @find
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @find
    assert_response :success
  end

  test "should update find" do
    patch :update, id: @find, find: { album_id: @find.album_id, photo: @find.photo, user_id: @find.user_id }
    assert_redirected_to find_path(assigns(:find))
  end

  test "should destroy find" do
    assert_difference('Find.count', -1) do
      delete :destroy, id: @find
    end

    assert_redirected_to finds_path
  end
end
