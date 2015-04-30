class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :refrigerator_id
      t.integer :icecubes
      t.text :description
    end
  end

end
