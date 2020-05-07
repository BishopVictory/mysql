require "application_system_test_case"

class TelBooksTest < ApplicationSystemTestCase
  setup do
    @tel_book = tel_books(:one)
  end

  test "visiting the index" do
    visit tel_books_url
    assert_selector "h1", text: "Tel Books"
  end

  test "creating a Tel book" do
    visit tel_books_url
    click_on "New Tel Book"

    fill_in "Cell", with: @tel_book.cell
    fill_in "First name", with: @tel_book.first_name
    fill_in "Last name", with: @tel_book.last_name
    click_on "Create Tel book"

    assert_text "Tel book was successfully created"
    click_on "Back"
  end

  test "updating a Tel book" do
    visit tel_books_url
    click_on "Edit", match: :first

    fill_in "Cell", with: @tel_book.cell
    fill_in "First name", with: @tel_book.first_name
    fill_in "Last name", with: @tel_book.last_name
    click_on "Update Tel book"

    assert_text "Tel book was successfully updated"
    click_on "Back"
  end

  test "destroying a Tel book" do
    visit tel_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tel book was successfully destroyed"
  end
end
