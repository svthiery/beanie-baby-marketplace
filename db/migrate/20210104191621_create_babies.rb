class CreateBabies < ActiveRecord::Migration[6.0]
  def change
    create_table :babies do |t|
      t.string :name
      t.integer :release_year
      t.text :poem
      t.string :img_url
      t.string :species
      t.integer :msrp
      t.timestamps
    end
  end
end
