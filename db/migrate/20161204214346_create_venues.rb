class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :title
      t.string :city
      t.string :state
      t.string :zip
      t.integer :coordinator_id
      t.string :website
      t.integer :capacity
      t.text :description
      t.text :cancellation_policy
      t.text :drink_option_1
      t.text :drink_option_2
      t.text :drink_option_3
      t.text :drink_option_4
      t.text :drink_option_5
      t.text :food_option_1
      t.text :food_option_2
      t.text :food_option_3
      t.text :food_option_4
      t.text :food_option_5
      t.string :amenity_1
      t.string :amenity_2
      t.string :amenity_3
      t.string :amenity_4
      t.string :amenity_5
      t.string :amenity_6
      t.string :amenity_7
      t.string :amenity_8
      t.string :rule_1
      t.string :rule_2
      t.string :rule_3
      t.string :rule_4
      t.string :rule_5
      t.string :rule_6
      t.integer :do1_price
      t.integer :do2_price
      t.integer :do3_price
      t.integer :do4_price
      t.integer :do5_price
      t.integer :fo1_price
      t.integer :fo2_price
      t.integer :fo3_price
      t.integer :fo4_price
      t.integer :fo5_price

      t.timestamps

    end
  end
end
