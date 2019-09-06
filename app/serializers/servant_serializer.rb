class ServantSerializer < ActiveModel::Serializer
  attributes :id, :name, :class, :rarity, :level, :atk, :hp
end
