require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  test "Creating a new quote" do
    # When we visit the Quotes#index page
    # we expect to see a title with the text "Quotes"
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    # When we click on the link with the text "New Quote"
    # we expect to land on a page with the title "New Quote"
    click_on "New Quote"
    assert_selector "h1", text: "New Quote"

    # When we fill in the name input with "Test quote"
    # and we click on "Create Quote"
    fill_in "Name", with: "Test quote"
    click_on "Create quote"

    # We expect to be back on the page with the title "Quotes"
    # and to see our "Test quote" added to the list
    assert_selector "h1", text: "Quotes"
    assert_text "Test quote"
  end
end
