class CreateLobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :lobbies do |t|
      t.integer :host_id
      t.string :lobbyname
      t.integer :players
      t.string :password
      t.string :answer, default: nil

      t.timestamps
    end
  end
end
