require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { active: @profile.active, age: @profile.age, city: @profile.city, country: @profile.country, course: @profile.course, cultural_tip: @profile.cultural_tip, email: @profile.email, feeding_tip: @profile.feeding_tip, housing_tip: @profile.housing_tip, latitude: @profile.latitude, longitude: @profile.longitude, name: @profile.name, other_tip: @profile.other_tip, transportation_tip: @profile.transportation_tip, university: @profile.university, visa_tip: @profile.visa_tip }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { active: @profile.active, age: @profile.age, city: @profile.city, country: @profile.country, course: @profile.course, cultural_tip: @profile.cultural_tip, email: @profile.email, feeding_tip: @profile.feeding_tip, housing_tip: @profile.housing_tip, latitude: @profile.latitude, longitude: @profile.longitude, name: @profile.name, other_tip: @profile.other_tip, transportation_tip: @profile.transportation_tip, university: @profile.university, visa_tip: @profile.visa_tip }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
