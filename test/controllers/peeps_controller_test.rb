require 'test_helper'

class PeepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peep = peeps(:one)
  end

  test "should get index" do
    get peeps_url
    assert_response :success
  end

  test "should get new" do
    get new_peep_url
    assert_response :success
  end

  test "should create peep" do
    assert_difference('Peep.count') do
      post peeps_url, params: { peep: { email: @peep.email, facebook: @peep.facebook, first_name: @peep.first_name, instagram: @peep.instagram, last_name: @peep.last_name, phone: @peep.phone, snapchat: @peep.snapchat, soundcloud: @peep.soundcloud, tiktok: @peep.tiktok, twitter: @peep.twitter } }
    end

    assert_redirected_to peep_url(Peep.last)
  end

  test "should show peep" do
    get peep_url(@peep)
    assert_response :success
  end

  test "should get edit" do
    get edit_peep_url(@peep)
    assert_response :success
  end

  test "should update peep" do
    patch peep_url(@peep), params: { peep: { email: @peep.email, facebook: @peep.facebook, first_name: @peep.first_name, instagram: @peep.instagram, last_name: @peep.last_name, phone: @peep.phone, snapchat: @peep.snapchat, soundcloud: @peep.soundcloud, tiktok: @peep.tiktok, twitter: @peep.twitter } }
    assert_redirected_to peep_url(@peep)
  end

  test "should destroy peep" do
    assert_difference('Peep.count', -1) do
      delete peep_url(@peep)
    end

    assert_redirected_to peeps_url
  end
end
