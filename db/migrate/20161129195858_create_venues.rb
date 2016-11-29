class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :coordinator_id
      t.string :website
      t.integer :capacity
      t.text :description
      t.text :cancellation_policy
      t.text :drink_options
      t.text :food_options

      t.timestamps

    end
  end
end
