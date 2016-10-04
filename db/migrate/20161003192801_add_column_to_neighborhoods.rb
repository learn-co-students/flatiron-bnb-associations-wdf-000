class AddColumnToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :name, :string
    add_column :neighborhoods, :city_id, :integer
    add_column :neighborhoods, :listing_id, :integer
  end
end
