require 'test_helper'

class EntreprisesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get entreprises_new_url
    assert_response :success
  end

end
