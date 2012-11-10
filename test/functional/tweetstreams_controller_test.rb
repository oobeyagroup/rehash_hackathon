require 'test_helper'

class TweetstreamsControllerTest < ActionController::TestCase
  setup do
    @twitstream = twitstreams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twitstreams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twitstream" do
    assert_difference('Tweetstream.count') do
      post :create, twitstream: { created_at: @twitstream.created_at, name: @twitstream.name, text: @twitstream.text }
    end

    assert_redirected_to twitstream_path(assigns(:twitstream))
  end

  test "should show twitstream" do
    get :show, id: @twitstream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twitstream
    assert_response :success
  end

  test "should update twitstream" do
    put :update, id: @twitstream, twitstream: { created_at: @twitstream.created_at, name: @twitstream.name, text: @twitstream.text }
    assert_redirected_to twitstream_path(assigns(:twitstream))
  end

  test "should destroy twitstream" do
    assert_difference('Tweetstream.count', -1) do
      delete :destroy, id: @twitstream
    end

    assert_redirected_to twitstreams_path
  end
end
