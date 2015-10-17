require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should get pallette" do
    get :pallette
    assert_response :success
  end

end
