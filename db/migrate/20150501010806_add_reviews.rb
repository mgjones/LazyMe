class AddReviews < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.integer 'rating'
      t.integer 'refrigerator_id'
      t.text 'description'
      t.string 'author'
      t.integer 'upvote'
      t.integer 'downvote'
    end
  end
end
