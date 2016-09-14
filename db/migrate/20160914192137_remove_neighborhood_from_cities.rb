class RemoveNeighborhoodFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :neighborhood, :string
  end
end
