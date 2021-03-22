class AddStatusToTrades < ActiveRecord::Migration[6.0]
  def change
    add_column :trades, :status, :string
  end
end
