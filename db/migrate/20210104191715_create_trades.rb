class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.integer :g_ownership_id
      t.integer :d_ownership_id
      t.timestamps
    end
  end
end
