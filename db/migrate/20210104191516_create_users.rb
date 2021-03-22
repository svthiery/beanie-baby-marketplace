class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :password_digest
      t.string :location
      t.string :favorite_baby
      t.integer :age
      t.integer :wallet
      t.timestamps
    end
  end
end
