require "test_helper"

class LayoutSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @layout_section = layout_sections(:one)
  end

  test "should get index" do
    get layout_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_layout_section_url
    assert_response :success
  end

  test "should create layout_section" do
    assert_difference("LayoutSection.count") do
      post layout_sections_url, params: { layout_section: {  } }
    end

    assert_redirected_to layout_section_url(LayoutSection.last)
  end

  test "should show layout_section" do
    get layout_section_url(@layout_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_layout_section_url(@layout_section)
    assert_response :success
  end

  test "should update layout_section" do
    patch layout_section_url(@layout_section), params: { layout_section: {  } }
    assert_redirected_to layout_section_url(@layout_section)
  end

  test "should destroy layout_section" do
    assert_difference("LayoutSection.count", -1) do
      delete layout_section_url(@layout_section)
    end

    assert_redirected_to layout_sections_url
  end
end
