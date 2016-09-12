class ChangeReviewsColumnType < ActiveRecord::Migration
  def change
    change_column :reviews, :guest_id, :integer
  end
end
