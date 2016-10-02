class RemoveColumnFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :user_id, :integer
  end
end
