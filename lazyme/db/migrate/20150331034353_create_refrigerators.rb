class CreateRefrigerators < ActiveRecord::Migration
  def change
    create_table :refrigerators do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.integer :rating
      t.text :description

      t.timestamps null: false
    end
  end
end
