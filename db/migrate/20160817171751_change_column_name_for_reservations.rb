class ChangeColumnNameForReservations < ActiveRecord::Migration
  def change
    change_table :reservations do |t|
      t.rename :list_id, :listing_id
    end
  end
end
