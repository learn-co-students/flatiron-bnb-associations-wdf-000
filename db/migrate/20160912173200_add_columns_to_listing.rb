class AddColumnsToListing < ActiveRecord::Migration
  def change
    add_column :listings, :listing_type, :string
    add_column :listings, :title, :string
    add_column :listings, :description, :string
    add_column :listings, :price, :integer
    add_reference :listings, :neighborhood, index: true
    add_foreign_key :listings, :neighborhoods
  end
end
