# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'servants.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  s = Servant.new
  # sclass,name,rarity,level,hp,atk,user_id
  s.sclass = row['sclass']
  s.name = row['name']
  s.rarity = row['rarity']
  s.level = row['level']
  s.hp = row['hp']
  s.atk = row['atk']
  s.user_id = 1
  s.save
end
puts csv_text
