class CreateLobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :lobbies do |t|
      t.integer :host_id
      t.string :lobbyname
      t.integer :players, default: 1
      t.string :password
      t.string :answer
      t.string :category

      t.timestamps
    end
  end
end
