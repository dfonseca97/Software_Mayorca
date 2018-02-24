require 'test_helper'

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule = schedules(:one)
  end

  test "should get index" do
    get schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_url
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post schedules_url, params: { schedule: { day_1: @schedule.day_1, day_2: @schedule.day_2, day_3: @schedule.day_3, day_4: @schedule.day_4, day_5: @schedule.day_5, ending_time: @schedule.ending_time, starting_time: @schedule.starting_time } }
    end

    assert_redirected_to schedule_url(Schedule.last)
  end

  test "should show schedule" do
    get schedule_url(@schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_url(@schedule)
    assert_response :success
  end

  test "should update schedule" do
    patch schedule_url(@schedule), params: { schedule: { day_1: @schedule.day_1, day_2: @schedule.day_2, day_3: @schedule.day_3, day_4: @schedule.day_4, day_5: @schedule.day_5, ending_time: @schedule.ending_time, starting_time: @schedule.starting_time } }
    assert_redirected_to schedule_url(@schedule)
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete schedule_url(@schedule)
    end

    assert_redirected_to schedules_url
  end
end
