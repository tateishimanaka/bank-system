class CreateCorporationProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :corporation_projects do |t|

      t.integer :corporation_customer_id
      t.integer :user_id
      t.integer :collateral_id
      t.integer :use_of_fund_id
      t.integer :fund_type_id
      t.integer :loan
      t.integer :span
      t.integer :month_payment
      t.integer :last_mont_payment
      t.string :interest_rate
      t.string :joint_guarantor
      t.integer :own_resource
      t.string :end_day
      t.string :date
      t.string :appoint_date
      t.boolean :is_active, default: true
      t.timestamps
    end
  end
end
