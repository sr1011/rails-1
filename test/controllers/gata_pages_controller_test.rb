require 'test_helper'

class GataPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gata_page = gata_pages(:one)
  end

  test "should get index" do
    get gata_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_gata_page_url
    assert_response :success
  end

  test "should create gata_page" do
    assert_difference('GataPage.count') do
      post gata_pages_url, params: { gata_page: { data: @gata_page.data } }
    end

    assert_redirected_to gata_page_url(GataPage.last)
  end

  test "should show gata_page" do
    get gata_page_url(@gata_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_gata_page_url(@gata_page)
    assert_response :success
  end

  test "should update gata_page" do
    patch gata_page_url(@gata_page), params: { gata_page: { data: @gata_page.data } }
    assert_redirected_to gata_page_url(@gata_page)
  end

  test "should destroy gata_page" do
    assert_difference('GataPage.count', -1) do
      delete gata_page_url(@gata_page)
    end

    assert_redirected_to gata_pages_url
  end
end
