require "test_helper"

class IntitutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intitution = intitutions(:one)
  end

  test "should get index" do
    get intitutions_url
    assert_response :success
  end

  test "should get new" do
    get new_intitution_url
    assert_response :success
  end

  test "should create intitution" do
    assert_difference("Intitution.count") do
      post intitutions_url, params: { intitution: { cnpj: @intitution.cnpj, institution_type: @intitution.institution_type, name: @intitution.name } }
    end

    assert_redirected_to intitution_url(Intitution.last)
  end

  test "should show intitution" do
    get intitution_url(@intitution)
    assert_response :success
  end

  test "should get edit" do
    get edit_intitution_url(@intitution)
    assert_response :success
  end

  test "should update intitution" do
    patch intitution_url(@intitution), params: { intitution: { cnpj: @intitution.cnpj, institution_type: @intitution.institution_type, name: @intitution.name } }
    assert_redirected_to intitution_url(@intitution)
  end

  test "should destroy intitution" do
    assert_difference("Intitution.count", -1) do
      delete intitution_url(@intitution)
    end

    assert_redirected_to intitutions_url
  end
end
