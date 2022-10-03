class CreateRakutenGames < ActiveRecord::Migration[6.1]
  def change
    create_table :rakuten_games do |t|
      t.string :title,null: false
      t.string :hardware,null: false
      t.string :smallimage_url,null: false
      t.string :largeimage_url,null: false
      t.string :item_url,null: false

      t.timestamps
    end
  end
end
