class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :host_id
      t.integer :lobby_id
      t.integer :user_id

      t.timestamps
    end
  end
end
