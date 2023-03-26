json.extract! transaction, :id, :quantity, :price, :transaction_date, :payment_method, :product_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
