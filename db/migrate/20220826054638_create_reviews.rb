class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :geme_id,null: false
      t.string :title,null: false
      t.text :review,null: false
      t.integer :score,null: false

      t.timestamps
    end
  end
end
