require "application_system_test_case"

class VendingMachinesTest < ApplicationSystemTestCase
  setup do
    @vending_machine = vending_machines(:one)
  end

  test "visiting the index" do
    visit vending_machines_url
    assert_selector "h1", text: "Vending machines"
  end

  test "should create vending machine" do
    visit vending_machines_url
    click_on "New vending machine"

    fill_in "Capacity", with: @vending_machine.capacity
    fill_in "Location", with: @vending_machine.location
    fill_in "Machine code", with: @vending_machine.machine_code
    fill_in "Machine name", with: @vending_machine.machine_name
    fill_in "Payment method", with: @vending_machine.payment_method
    click_on "Create Vending machine"

    assert_text "Vending machine was successfully created"
    click_on "Back"
  end

  test "should update Vending machine" do
    visit vending_machine_url(@vending_machine)
    click_on "Edit this vending machine", match: :first

    fill_in "Capacity", with: @vending_machine.capacity
    fill_in "Location", with: @vending_machine.location
    fill_in "Machine code", with: @vending_machine.machine_code
    fill_in "Machine name", with: @vending_machine.machine_name
    fill_in "Payment method", with: @vending_machine.payment_method
    click_on "Update Vending machine"

    assert_text "Vending machine was successfully updated"
    click_on "Back"
  end

  test "should destroy Vending machine" do
    visit vending_machine_url(@vending_machine)
    click_on "Destroy this vending machine", match: :first

    assert_text "Vending machine was successfully destroyed"
  end
end
