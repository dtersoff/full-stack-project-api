class ServantSerializer < ActiveModel::Serializer
  attributes :id, :name, :sclass, :rarity, :level, :atk, :hp
  belongs_to :user
end
