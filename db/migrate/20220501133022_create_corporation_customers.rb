class CreateCorporationCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :corporation_customers do |t|

      t.timestamps

      t.integer :store_id
      t.string :name
      t.string :name_kana
      t.string :president
      t.string :president_kana
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.string :president_telephone_number
      t.string :president_postal_code
      t.string :president_address
      t.string :category
      t.string :capital
      t.boolean :is_active, default: true


    end
  end
end
