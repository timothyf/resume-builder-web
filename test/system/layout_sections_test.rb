require "application_system_test_case"

class LayoutSectionsTest < ApplicationSystemTestCase
  setup do
    @layout_section = layout_sections(:one)
  end

  test "visiting the index" do
    visit layout_sections_url
    assert_selector "h1", text: "Layout sections"
  end

  test "should create layout section" do
    visit layout_sections_url
    click_on "New layout section"

    click_on "Create Layout section"

    assert_text "Layout section was successfully created"
    click_on "Back"
  end

  test "should update Layout section" do
    visit layout_section_url(@layout_section)
    click_on "Edit this layout section", match: :first

    click_on "Update Layout section"

    assert_text "Layout section was successfully updated"
    click_on "Back"
  end

  test "should destroy Layout section" do
    visit layout_section_url(@layout_section)
    click_on "Destroy this layout section", match: :first

    assert_text "Layout section was successfully destroyed"
  end
end
