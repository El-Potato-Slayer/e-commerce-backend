class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :full_name
      t.string :mobile_number
      t.string :country
      t.string :state
      t.string :city_name
      t.string :city_code
      t.string :street_address

      t.timestamps
    end
  end
end
