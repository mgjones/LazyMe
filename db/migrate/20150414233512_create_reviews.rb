class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :star
      t.text :review
      t.integer :refrigerator_id
      
      t.timestamps null: false
    end
  end
end
