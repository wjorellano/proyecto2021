require 'test_helper'

class Courses::LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get courses_lessons_index_url
    assert_response :success
  end

end
