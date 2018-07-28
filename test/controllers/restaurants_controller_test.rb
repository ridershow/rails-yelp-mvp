require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get restaurants_name_url
    assert_response :success
  end

  test "should get address:content" do
    get restaurants_address:content_url
    assert_response :success
  end

  test "should get phone_number:string" do
    get restaurants_phone_number:string_url
    assert_response :success
  end

  test "should get category" do
    get restaurants_category_url
    assert_response :success
  end

end
