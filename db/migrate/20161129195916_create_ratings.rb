class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :venue_id
      t.text :comments

      t.timestamps

    end
  end
end
