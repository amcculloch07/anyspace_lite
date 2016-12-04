class CreateCoordinators < ActiveRecord::Migration
  def change
    create_table :coordinators do |t|
      t.text :name
      t.string :email_address
      t.string :phone_number

      t.timestamps

    end
  end
end
