require 'test_helper'

class TelBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tel_book = tel_books(:one)
  end

  test "should get index" do
    get tel_books_url
    assert_response :success
  end

  test "should get new" do
    get new_tel_book_url
    assert_response :success
  end

  test "should create tel_book" do
    assert_difference('TelBook.count') do
      post tel_books_url, params: { tel_book: { cell: @tel_book.cell, first_name: @tel_book.first_name, last_name: @tel_book.last_name } }
    end

    assert_redirected_to tel_book_url(TelBook.last)
  end

  test "should show tel_book" do
    get tel_book_url(@tel_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_tel_book_url(@tel_book)
    assert_response :success
  end

  test "should update tel_book" do
    patch tel_book_url(@tel_book), params: { tel_book: { cell: @tel_book.cell, first_name: @tel_book.first_name, last_name: @tel_book.last_name } }
    assert_redirected_to tel_book_url(@tel_book)
  end

  test "should destroy tel_book" do
    assert_difference('TelBook.count', -1) do
      delete tel_book_url(@tel_book)
    end

    assert_redirected_to tel_books_url
  end
end
