class DropTable < ActiveRecord::Migration
  def change
    drop_table :table_reviews
  end
end
