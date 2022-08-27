require "application_system_test_case"

class QwippsTest < ApplicationSystemTestCase
  setup do
    @qwipp = qwipps(:one)
  end

  test "visiting the index" do
    visit qwipps_url
    assert_selector "h1", text: "Qwipps"
  end

  test "should create qwipp" do
    visit qwipps_url
    click_on "New qwipp"

    fill_in "Qwipp", with: @qwipp.qwipp
    click_on "Create Qwipp"

    assert_text "Qwipp was successfully created"
    click_on "Back"
  end

  test "should update Qwipp" do
    visit qwipp_url(@qwipp)
    click_on "Edit this qwipp", match: :first

    fill_in "Qwipp", with: @qwipp.qwipp
    click_on "Update Qwipp"

    assert_text "Qwipp was successfully updated"
    click_on "Back"
  end

  test "should destroy Qwipp" do
    visit qwipp_url(@qwipp)
    click_on "Destroy this qwipp", match: :first

    assert_text "Qwipp was successfully destroyed"
  end
end
