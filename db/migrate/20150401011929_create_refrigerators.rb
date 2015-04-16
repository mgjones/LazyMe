class CreateRefrigerators < ActiveRecord::Migration
  def change
    create_table :refrigerators do |t|
    
      t.string :name
      t.string :brand
      t.decimal :price, precision: 10, scale: 2
      t.decimal :rating, precision: 1, scale: 1
      t.decimal :popularity, precision: 1, scale: 2
      t.text :keyfeatures

      t.timestamps null: false
    end
  end
end
