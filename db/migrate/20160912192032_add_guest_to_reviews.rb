class AddGuestToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :guest_id, :string
  end
end
