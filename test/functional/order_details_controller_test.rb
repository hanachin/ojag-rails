require 'test_helper'

class OrderDetailsControllerTest < ActionController::TestCase
  setup do
    @order_detail = order_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_detail" do
    assert_difference('OrderDetail.count') do
      post :create, order_detail: { order_id: @order_detail.order_id, product_id: @order_detail.product_id, product_name: @order_detail.product_name, product_type_number: @order_detail.product_type_number, product_unit: @order_detail.product_unit, quantity: @order_detail.quantity, unit_price: @order_detail.unit_price }
    end

    assert_redirected_to order_detail_path(assigns(:order_detail))
  end

  test "should show order_detail" do
    get :show, id: @order_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_detail
    assert_response :success
  end

  test "should update order_detail" do
    put :update, id: @order_detail, order_detail: { order_id: @order_detail.order_id, product_id: @order_detail.product_id, product_name: @order_detail.product_name, product_type_number: @order_detail.product_type_number, product_unit: @order_detail.product_unit, quantity: @order_detail.quantity, unit_price: @order_detail.unit_price }
    assert_redirected_to order_detail_path(assigns(:order_detail))
  end

  test "should destroy order_detail" do
    assert_difference('OrderDetail.count', -1) do
      delete :destroy, id: @order_detail
    end

    assert_redirected_to order_details_path
  end
end
