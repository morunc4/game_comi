class RenameGemeIdColumnToReviews < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :geme_id, :game_id
  end
end