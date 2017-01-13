class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|

    end

    create_table :users do |t|
    	t.string :name
      t.string :email
      t.boolean :admin

      t.timestamps
    end

    #crea las tablas restantes
  end
end
