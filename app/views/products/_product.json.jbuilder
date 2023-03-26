json.extract! product, :id, :product_code, :product_vending_code, :product_name, :price, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
