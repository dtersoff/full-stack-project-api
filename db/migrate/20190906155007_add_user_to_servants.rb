class AddUserToServants < ActiveRecord::Migration[5.2]
  def change
    add_reference :servants, :user, foreign_key: true
  end
end
