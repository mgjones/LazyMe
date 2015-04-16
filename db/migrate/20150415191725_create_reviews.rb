class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews, :id => false do |t|
      t.references 'refrigerators'
      t.integer :refrigerator_id
      t.integer :icecubes
      t.text :description
    end
  end
end
