require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should post create" do
    
    account = Account.create(:name => 'Ben')
    
    params = {
      'order' => {
        'amount' => '9.99',
        'customer_attributes' => {
          'vip' => 1,
          'account_attributes' => {
            'id' => account.id,
            'delivery_address' => 'I moved so please update it.'
            }
          }
        }
      }
    post :create, params
    assert_response :redirect_to
  end
end
