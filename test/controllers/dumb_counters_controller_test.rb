require 'test_helper'

class DumbCountersControllerTest < ActionController::TestCase
  setup do
    @dumb_counter = dumb_counters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dumb_counters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dumb_counter" do
    assert_difference('DumbCounter.count') do
      post :create, dumb_counter: { finished_at: @dumb_counter.finished_at, name: @dumb_counter.name, started_at: @dumb_counter.started_at }
    end

    assert_redirected_to dumb_counter_path(assigns(:dumb_counter))
  end

  test "should show dumb_counter" do
    get :show, id: @dumb_counter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dumb_counter
    assert_response :success
  end

  test "should update dumb_counter" do
    patch :update, id: @dumb_counter, dumb_counter: { finished_at: @dumb_counter.finished_at, name: @dumb_counter.name, started_at: @dumb_counter.started_at }
    assert_redirected_to dumb_counter_path(assigns(:dumb_counter))
  end

  test "should destroy dumb_counter" do
    assert_difference('DumbCounter.count', -1) do
      delete :destroy, id: @dumb_counter
    end

    assert_redirected_to dumb_counters_path
  end
end
