json.extract! produto, :id, :SKU, :name, :description, :quantity, :price, :created_at, :updated_at
json.url produto_url(produto, format: :json)
