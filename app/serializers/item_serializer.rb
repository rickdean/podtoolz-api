class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category, :description, :url, :comment
end
