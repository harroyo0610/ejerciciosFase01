class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :num_flight
      t.date :date
      t.string :depart
      t.string :from
      t.string :to
      t.string :duration
      t.float :cost
      t.integer :passengers

      t.timestamps
    end

    create_table :users do |t|
    	t.string :name
      t.string :email
      t.boolean :admin

      t.timestamps
    end

    create_table :bookings do |t|
      t.integer :num_flight
      t.date :date
      t.string :depart
      t.string :from
      t.string :to
      t.string :duration
      t.float :cost

      t.timestamps
    end

    create_table :user_bookings do |t|
      t.integer :user
      t.integer :booking

      t.timestamps
    end
  end
end
