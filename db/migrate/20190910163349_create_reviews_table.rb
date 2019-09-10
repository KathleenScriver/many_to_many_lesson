class CreateReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :restaurant, foreign_key: true
      t.references :customer, foreign_key: true
    end
  end
end
