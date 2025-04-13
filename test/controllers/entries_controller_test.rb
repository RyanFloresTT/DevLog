require "test_helper"

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
    @session = sessions(:one)
    @entry = entries(:one)
  end

  test "should create entry" do
    assert_difference("Entry.count") do
      post project_session_entries_path(@project, @session), params: {
        entry: { prompt: "Test prompt", response: "Test response" }
      }
    end
    assert_redirected_to project_session_path(@project, @session)
  end

  test "should get edit" do
    get edit_project_session_entry_url(@project, @session, @entry)
    assert_response :success
  end

  test "should update entry" do
    patch project_session_entry_url(@project, @session, @entry), params: {
      entry: { prompt: "Updated prompt", response: "Updated response" }
    }
    assert_redirected_to project_session_url(@project, @session)
  end

  test "should destroy entry" do
    assert_difference("Entry.count", -1) do
      delete project_session_entry_path(@project, @session, @entry)
    end

    assert_redirected_to project_session_path(@project, @session)
  end
end
