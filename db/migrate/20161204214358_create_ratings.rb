class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :comments_venue
      t.integer :venue_id
      t.integer :user_id

      t.timestamps

    end
  end
end
