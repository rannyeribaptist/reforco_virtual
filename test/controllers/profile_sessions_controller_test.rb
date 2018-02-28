require 'test_helper'

class ProfileSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_session = profile_sessions(:one)
  end

  test "should get index" do
    get profile_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_session_url
    assert_response :success
  end

  test "should create profile_session" do
    assert_difference('ProfileSession.count') do
      post profile_sessions_url, params: { profile_session: { profile_id: @profile_session.profile_id, user_id: @profile_session.user_id } }
    end

    assert_redirected_to profile_session_url(ProfileSession.last)
  end

  test "should show profile_session" do
    get profile_session_url(@profile_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_session_url(@profile_session)
    assert_response :success
  end

  test "should update profile_session" do
    patch profile_session_url(@profile_session), params: { profile_session: { profile_id: @profile_session.profile_id, user_id: @profile_session.user_id } }
    assert_redirected_to profile_session_url(@profile_session)
  end

  test "should destroy profile_session" do
    assert_difference('ProfileSession.count', -1) do
      delete profile_session_url(@profile_session)
    end

    assert_redirected_to profile_sessions_url
  end
end
