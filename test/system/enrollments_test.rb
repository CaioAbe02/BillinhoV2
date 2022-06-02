require "application_system_test_case"

class EnrollmentsTest < ApplicationSystemTestCase
  setup do
    @enrollment = enrollments(:one)
  end

  test "visiting the index" do
    visit enrollments_url
    assert_selector "h1", text: "Enrollments"
  end

  test "should create enrollment" do
    visit enrollments_url
    click_on "New enrollment"

    fill_in "Course name", with: @enrollment.course_name
    fill_in "Due day", with: @enrollment.due_day
    fill_in "Full value", with: @enrollment.full_value
    fill_in "Installments", with: @enrollment.installments
    fill_in "Institution", with: @enrollment.institution_id
    fill_in "Student", with: @enrollment.student_id
    click_on "Create Enrollment"

    assert_text "Enrollment was successfully created"
    click_on "Back"
  end

  test "should update Enrollment" do
    visit enrollment_url(@enrollment)
    click_on "Edit this enrollment", match: :first

    fill_in "Course name", with: @enrollment.course_name
    fill_in "Due day", with: @enrollment.due_day
    fill_in "Full value", with: @enrollment.full_value
    fill_in "Installments", with: @enrollment.installments
    fill_in "Institution", with: @enrollment.institution_id
    fill_in "Student", with: @enrollment.student_id
    click_on "Update Enrollment"

    assert_text "Enrollment was successfully updated"
    click_on "Back"
  end

  test "should destroy Enrollment" do
    visit enrollment_url(@enrollment)
    click_on "Destroy this enrollment", match: :first

    assert_text "Enrollment was successfully destroyed"
  end
end
