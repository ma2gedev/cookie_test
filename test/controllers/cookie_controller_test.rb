require 'test_helper'

class CookieControllerTest < ActionController::TestCase
  test "plus" do
    cookies[:value] = '+'
    get :index
    assert_response :success
  end

  test "not plus" do
    cookies[:value] = '-'
    get :index
    assert_response :not_found
  end
end
