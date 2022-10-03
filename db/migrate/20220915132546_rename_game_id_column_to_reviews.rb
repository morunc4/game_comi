class RenameGameIdColumnToReviews < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :game_id, :rakuten_game_id
  end
end
