require 'test_helper'

class WaterFtCalculatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get water_ft_calculators_new_url
    assert_response :success
  end

  test "should get create" do
    get water_ft_calculators_create_url
    assert_response :success
  end

end
