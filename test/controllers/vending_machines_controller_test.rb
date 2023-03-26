require "test_helper"

class VendingMachinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vending_machine = vending_machines(:one)
  end

  test "should get index" do
    get vending_machines_url
    assert_response :success
  end

  test "should get new" do
    get new_vending_machine_url
    assert_response :success
  end

  test "should create vending_machine" do
    assert_difference("VendingMachine.count") do
      post vending_machines_url, params: { vending_machine: { capacity: @vending_machine.capacity, location: @vending_machine.location, machine_code: @vending_machine.machine_code, machine_name: @vending_machine.machine_name, payment_method: @vending_machine.payment_method } }
    end

    assert_redirected_to vending_machine_url(VendingMachine.last)
  end

  test "should show vending_machine" do
    get vending_machine_url(@vending_machine)
    assert_response :success
  end

  test "should get edit" do
    get edit_vending_machine_url(@vending_machine)
    assert_response :success
  end

  test "should update vending_machine" do
    patch vending_machine_url(@vending_machine), params: { vending_machine: { capacity: @vending_machine.capacity, location: @vending_machine.location, machine_code: @vending_machine.machine_code, machine_name: @vending_machine.machine_name, payment_method: @vending_machine.payment_method } }
    assert_redirected_to vending_machine_url(@vending_machine)
  end

  test "should destroy vending_machine" do
    assert_difference("VendingMachine.count", -1) do
      delete vending_machine_url(@vending_machine)
    end

    assert_redirected_to vending_machines_url
  end
end
