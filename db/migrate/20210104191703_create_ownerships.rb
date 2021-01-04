class CreateOwnerships < ActiveRecord::Migration[6.0]
  def change
    create_table :ownerships do |t|
      t.integer :baby_id
      t.integer :user_id
      t.timestamps
    end
  end
end
