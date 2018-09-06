require 'test_helper'

class CouplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @couple = couples(:one)
  end

  test "should get index" do
    get couples_url
    assert_response :success
  end

  test "should get new" do
    get new_couple_url
    assert_response :success
  end

  test "should create couple" do
    assert_difference('Couple.count') do
      post couples_url, params: { couple: { ended_at: @couple.ended_at, user1_id: @couple.user1_id, user2_id: @couple.user2_id } }
    end

    assert_redirected_to couple_url(Couple.last)
  end

  test "should show couple" do
    get couple_url(@couple)
    assert_response :success
  end

  test "should get edit" do
    get edit_couple_url(@couple)
    assert_response :success
  end

  test "should update couple" do
    patch couple_url(@couple), params: { couple: { ended_at: @couple.ended_at, user1_id: @couple.user1_id, user2_id: @couple.user2_id } }
    assert_redirected_to couple_url(@couple)
  end

  test "should destroy couple" do
    assert_difference('Couple.count', -1) do
      delete couple_url(@couple)
    end

    assert_redirected_to couples_url
  end
end
