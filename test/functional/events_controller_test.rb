require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @competition = events(:cat_male).competition
    @event = events(:cat_male)
  end

  test "should get new" do
    get :new, :competition_id => @competition.to_param
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, :competition_id => @competition.to_param, :event => @event.attributes
    end

    assert_redirected_to competition_path(assigns(:competition))
  end

  test "should show event" do
    get :show, :competition_id => @competition.to_param, :id => @event.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :competition_id => @competition.to_param, :id => @event.to_param
    assert_response :success
  end

  test "should update event" do
    put :update, :competition_id => @competition.to_param, :id => @event.to_param, :event => @event.attributes
    #assert_redirected_to competition_event_path(assigns(:competition), assigns(:event))
    assert_redirected_to competition_path(assigns(:competition))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, :competition_id => @competition.to_param, :id => @event.to_param
    end

    assert_redirected_to competition_path(assigns(:competition))
  end
end
