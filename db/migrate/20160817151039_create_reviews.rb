class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :description
      
      t.integer :guest_id, null: false
      t.integer :reservation_id, null: false

      t.timestamp null: false
    end
  end
end
