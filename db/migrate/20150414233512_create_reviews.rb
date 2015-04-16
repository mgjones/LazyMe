class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :icecube
      t.text :description
      t.references :refrigerator_id # was t.integer
      
      t.timestamps null: false
    end
  end
end
