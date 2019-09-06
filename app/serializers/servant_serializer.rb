class ServantSerializer < ActiveModel::Serializer
  attributes :id, :name, :"s-class", :rarity, :level, :atk, :hp
end
