class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :user_id
      t.integer :host_id
      t.integer :lobby_id

      t.timestamps
    end
  end
end
