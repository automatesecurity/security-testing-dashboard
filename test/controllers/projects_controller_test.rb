require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "index renders metrics containers" do
    get root_url
    assert_response :success

    assert_includes @response.body, "department-chart"
    assert_includes @response.body, "testtype-chart"
    assert_includes @response.body, "avgcost-chart"
  end
end
