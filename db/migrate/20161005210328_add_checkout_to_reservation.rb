class AddCheckoutToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :checkout, :string
  end
end
