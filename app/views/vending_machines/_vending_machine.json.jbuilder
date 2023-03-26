json.extract! vending_machine, :id, :machine_code, :machine_name, :capacity, :payment_method, :location, :created_at, :updated_at
json.url vending_machine_url(vending_machine, format: :json)
