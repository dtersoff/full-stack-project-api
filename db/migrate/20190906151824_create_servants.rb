class CreateServants < ActiveRecord::Migration[5.2]
  def change
    create_table :servants do |t|
      t.string :name
      t.string :s-class
      t.integer :rarity
      t.integer :level
      t.integer :atk
      t.integer :hp

      t.timestamps
    end
  end
end
