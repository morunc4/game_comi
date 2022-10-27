class ChangeColumnDefaultToReview < ActiveRecord::Migration[6.1]
  def change
    change_column_default :reviews,:score,from: nil,to: "3"
  end
end
