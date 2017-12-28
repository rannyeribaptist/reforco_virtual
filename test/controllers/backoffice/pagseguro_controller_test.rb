require 'test_helper'

class Backoffice::PagseguroControllerTest < ActionDispatch::IntegrationTest
  test "should get confirm" do
    get backoffice_pagseguro_confirm_url
    assert_response :success
  end

end
