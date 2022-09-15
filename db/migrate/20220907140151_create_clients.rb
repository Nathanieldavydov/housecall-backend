class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :email
      t.string :location_id
      t.timestamps
    end
  end
end
