json.extract! product, :id, :SKU, :name, :description, :quantity, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
