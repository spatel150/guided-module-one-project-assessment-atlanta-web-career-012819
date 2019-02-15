class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :driver_id
      t.integer :passenger_id
      t.string :reviews
    end
  end
end
