require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
    @session = sessions(:one)
  end

  test "should get index" do
    get project_sessions_url(@project)
    assert_response :success
  end

  test "should create session" do
    assert_difference("Session.count") do
      post project_sessions_path(@project), params: { session: { name: "Test Session", prompt: "Test prompt", opening_notes: "Test open" } }
    end
    assert_redirected_to project_session_path(@project, Session.last)
  end

  test "should show session" do
    get project_session_url(@project, @session)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_session_url(@project, @session)
    assert_response :success
  end

  test "should destroy session" do
    assert_difference("Session.count", -1) do
      delete project_session_url(@project, @session)
    end
    assert_redirected_to project_path(@project)
  end
end
