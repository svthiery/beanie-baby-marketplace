class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.integer :trader_id
      t.integer :tradee_id
      t.integer :t_baby_id
      t.integer :r_baby_id
      t.timestamps
    end
  end
end
