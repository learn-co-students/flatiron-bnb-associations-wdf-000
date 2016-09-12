class ChangeGuesttoGuestIdColumn < ActiveRecord::Migration
  def change
    rename_column :reviews, :guest, :guest_id
  end
end
