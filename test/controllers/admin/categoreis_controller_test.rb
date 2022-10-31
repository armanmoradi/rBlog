require "test_helper"

class Admin::CategoreisControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_categoreis_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_categoreis_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_categoreis_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_categoreis_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_categoreis_destroy_url
    assert_response :success
  end

  test "should get index" do
    get admin_categoreis_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_categoreis_show_url
    assert_response :success
  end
end
