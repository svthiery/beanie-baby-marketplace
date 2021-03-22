class CreateOwnerships < ActiveRecord::Migration[6.0]
  def change
    create_table :ownerships do |t|
      t.string :name
      t.integer :baby_id
      t.integer :user_id
      t.integer :purchase_price
      t.string :condition
      t.timestamps
    end
  end
end
