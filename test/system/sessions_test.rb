require "application_system_test_case"

class SessionsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
    @session = sessions(:one)
  end

  test "visiting the index" do
    visit project_sessions_url(@project, @session)
    assert_selector "h1", text: "Sessions"
  end

  test "should create session" do
    visit project_url(@project, @session)
    click_on "Start New Session"

    click_on "Create Session"

    assert_text "Session was successfully created"
    click_on "Back"
  end

  test "should update Session" do
    visit session_url(@session)
    click_on "Edit this session", match: :first

    fill_in "Ended at", with: @session.ended_at.to_s
    fill_in "Project", with: @session.project_id
    fill_in "Started at", with: @session.started_at.to_s
    click_on "Update Session"

    assert_text "Session was successfully updated"
    click_on "Back"
  end

  test "should destroy Session" do
    visit project_session_path(@session, @session)
    click_on "❌", match: :first

    assert_text "Session was successfully destroyed"
  end
end
