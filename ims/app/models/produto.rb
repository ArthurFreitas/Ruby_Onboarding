class Produto
  include Mongoid::Document
  field :SKU, type: String
  field :nome, type: String
  field :descricao, type: String
  field :quantidade, type: Integer
  field :preco, type: Bignum
end
