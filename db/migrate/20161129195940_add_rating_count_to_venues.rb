class AddRatingCountToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :ratings_count, :integer
  end
end
