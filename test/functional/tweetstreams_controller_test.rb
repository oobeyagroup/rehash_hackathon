require 'test_helper'

class TweetstreamsControllerTest < ActionController::TestCase
  setup do
    @tweetstream = tweetstreams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweetstreams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweetstream" do
    assert_difference('Tweetstream.count') do
      post :create, tweetstream: { created_at: @tweetstream.created_at, name: @tweetstream.name, text: @tweetstream.text }
    end

    assert_redirected_to tweetstream_path(assigns(:tweetstream))
  end

  test "should show tweetstream" do
    get :show, id: @tweetstream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweetstream
    assert_response :success
  end

  test "should update tweetstream" do
    put :update, id: @tweetstream, tweetstream: { created_at: @tweetstream.created_at, name: @tweetstream.name, text: @tweetstream.text }
    assert_redirected_to tweetstream_path(assigns(:tweetstream))
  end

  test "should destroy tweetstream" do
    assert_difference('Tweetstream.count', -1) do
      delete :destroy, id: @tweetstream
    end

    assert_redirected_to tweetstreams_path
  end
end
