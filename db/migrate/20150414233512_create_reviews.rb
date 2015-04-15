class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :icecube
      t.text :description
      t.integer :refrigerator_id
      
      t.timestamps null: false
    end
  end
end
