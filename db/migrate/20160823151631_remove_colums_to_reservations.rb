class RemoveColumsToReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :address, :string
  end
end
