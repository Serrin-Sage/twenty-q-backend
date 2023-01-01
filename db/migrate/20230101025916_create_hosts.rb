class CreateHosts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosts do |t|
      t.string :username
      t.string :password_digest
      t.string :lobby
      t.string :answer

      t.timestamps
    end
  end
end
