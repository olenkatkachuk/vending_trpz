class CreateVendingMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :vending_machines do |t|
      t.string :machine_code
      t.string :machine_name
      t.integer :capacity
      t.string :payment_method
      t.string :location

      t.timestamps
    end
  end
end
