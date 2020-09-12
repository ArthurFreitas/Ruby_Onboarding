class Produto
  include Mongoid::Document
  field :SKU, type: String
  field :name, type: String
  field :description, type: String
  field :quantity, type: Integer
  field :price, type: Bignum
end
