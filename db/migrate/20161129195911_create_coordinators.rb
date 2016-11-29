class CreateCoordinators < ActiveRecord::Migration
  def change
    create_table :coordinators do |t|
      t.text :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number

      t.timestamps

    end
  end
end
