require 'test_helper'

class ProsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pro = pros(:one)
  end

  test "should get index" do
    get pros_url, as: :json
    assert_response :success
  end

  test "should create pro" do
    assert_difference('Pro.count') do
      post pros_url, params: { pro: { age: @pro.age, first_name: @pro.first_name, home_city: @pro.home_city, hometown: @pro.hometown, last_name: @pro.last_name } }, as: :json
    end

    assert_response 201
  end

  test "should show pro" do
    get pro_url(@pro), as: :json
    assert_response :success
  end

  test "should update pro" do
    patch pro_url(@pro), params: { pro: { age: @pro.age, first_name: @pro.first_name, home_city: @pro.home_city, hometown: @pro.hometown, last_name: @pro.last_name } }, as: :json
    assert_response 200
  end

  test "should destroy pro" do
    assert_difference('Pro.count', -1) do
      delete pro_url(@pro), as: :json
    end

    assert_response 204
  end
end
