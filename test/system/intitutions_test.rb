require "application_system_test_case"

class IntitutionsTest < ApplicationSystemTestCase
  setup do
    @intitution = intitutions(:one)
  end

  test "visiting the index" do
    visit intitutions_url
    assert_selector "h1", text: "Intitutions"
  end

  test "should create intitution" do
    visit intitutions_url
    click_on "New intitution"

    fill_in "Cnpj", with: @intitution.cnpj
    fill_in "Institution type", with: @intitution.institution_type
    fill_in "Name", with: @intitution.name
    click_on "Create Intitution"

    assert_text "Intitution was successfully created"
    click_on "Back"
  end

  test "should update Intitution" do
    visit intitution_url(@intitution)
    click_on "Edit this intitution", match: :first

    fill_in "Cnpj", with: @intitution.cnpj
    fill_in "Institution type", with: @intitution.institution_type
    fill_in "Name", with: @intitution.name
    click_on "Update Intitution"

    assert_text "Intitution was successfully updated"
    click_on "Back"
  end

  test "should destroy Intitution" do
    visit intitution_url(@intitution)
    click_on "Destroy this intitution", match: :first

    assert_text "Intitution was successfully destroyed"
  end
end
