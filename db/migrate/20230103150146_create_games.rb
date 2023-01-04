class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :category
      t.integer :lobby_id

      t.timestamps
    end
  end
end
