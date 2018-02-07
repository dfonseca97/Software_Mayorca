require 'test_helper'

class AssociatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @associate = associates(:one)
  end

  test "should get index" do
    get associates_url
    assert_response :success
  end

  test "should get new" do
    get new_associate_url
    assert_response :success
  end

  test "should create associate" do
    assert_difference('Associate.count') do
      post associates_url, params: { associate: { ascending_president: @associate.ascending_president, ascending_tabulator: @associate.ascending_tabulator, code: @associate.code, last_name: @associate.last_name, last_payment: @associate.last_payment, name: @associate.name, sponsor: @associate.sponsor } }
    end

    assert_redirected_to associate_url(Associate.last)
  end

  test "should show associate" do
    get associate_url(@associate)
    assert_response :success
  end

  test "should get edit" do
    get edit_associate_url(@associate)
    assert_response :success
  end

  test "should update associate" do
    patch associate_url(@associate), params: { associate: { ascending_president: @associate.ascending_president, ascending_tabulator: @associate.ascending_tabulator, code: @associate.code, last_name: @associate.last_name, last_payment: @associate.last_payment, name: @associate.name, sponsor: @associate.sponsor } }
    assert_redirected_to associate_url(@associate)
  end

  test "should destroy associate" do
    assert_difference('Associate.count', -1) do
      delete associate_url(@associate)
    end

    assert_redirected_to associates_url
  end
end
