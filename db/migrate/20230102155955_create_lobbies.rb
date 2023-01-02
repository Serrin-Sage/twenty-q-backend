class CreateLobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :lobbies do |t|
      t.string :name
      t.string :password_digest
      t.integer :player_number

      t.timestamps
    end
  end
end
