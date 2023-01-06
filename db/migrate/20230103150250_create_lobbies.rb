class CreateLobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :lobbies do |t|
      t.integer :host_id
      t.string :lobbyname
      t.integer :players, default: 1
      t.string :password
      t.string :answer
      t.string :category
      t.integer :question_count, default: 20
      
      t.timestamps
    end
  end
end
