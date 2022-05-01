class CreateIndividualCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :individual_customers do |t|

      t.timestamps

      t.integer :store_id
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.string :business
      t.string :yearly_income
      t.string :birthday
      t.boolean :is_active, default: true
    end
  end
end
