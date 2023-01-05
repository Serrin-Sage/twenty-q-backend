class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :lobby_id
      t.string :image
      t.string :username

      t.timestamps
    end
  end
end
