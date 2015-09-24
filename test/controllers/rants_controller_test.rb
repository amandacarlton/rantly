require 'test_helper'

class RantsControllerTest < ActionController::TestCase
  setup do
    @rant = rants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rant" do
    assert_difference('Rant.count') do
      post :create, rant: { author_id: @rant.author_id, body: @rant.body, title: @rant.title }
    end

    assert_redirected_to rant_path(assigns(:rant))
  end

  test "should show rant" do
    get :show, id: @rant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rant
    assert_response :success
  end

  test "should update rant" do
    patch :update, id: @rant, rant: { author_id: @rant.author_id, body: @rant.body, title: @rant.title }
    assert_redirected_to rant_path(assigns(:rant))
  end

  test "should destroy rant" do
    assert_difference('Rant.count', -1) do
      delete :destroy, id: @rant
    end

    assert_redirected_to rants_path
  end
end
