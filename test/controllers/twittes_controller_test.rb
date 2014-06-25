require 'test_helper'

class TwittesControllerTest < ActionController::TestCase
  test "index" do
    get :index
    assert_response :success
  end

  test "query" do
  	tweet = Twitter::Tweet.new(id: 1)
  	Twitter::REST::Client.any_instance.stubs(:search).returns([tweet])
  	get :search, q: "ola"
  	assert_response :success
  end
end
