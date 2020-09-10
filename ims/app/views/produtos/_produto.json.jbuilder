json.extract! produto, :id, :SKU, :nome, :descricao, :quantidade, :preco, :created_at, :updated_at
json.url produto_url(produto, format: :json)
