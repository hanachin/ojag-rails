require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { account_id: @order.account_id, company_fax: @order.company_fax, company_location: @order.company_location, company_name: @order.company_name, company_phone: @order.company_phone, company_zip_code: @order.company_zip_code, customer_name: @order.customer_name, delivering_at: @order.delivering_at, delivery_place: @order.delivery_place, note: @order.note, order_code: @order.order_code, ordered_at: @order.ordered_at }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { account_id: @order.account_id, company_fax: @order.company_fax, company_location: @order.company_location, company_name: @order.company_name, company_phone: @order.company_phone, company_zip_code: @order.company_zip_code, customer_name: @order.customer_name, delivering_at: @order.delivering_at, delivery_place: @order.delivery_place, note: @order.note, order_code: @order.order_code, ordered_at: @order.ordered_at }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
