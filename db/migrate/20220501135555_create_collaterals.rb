class CreateCollaterals < ActiveRecord::Migration[5.2]
  def change
    create_table :collaterals do |t|
      
      t.string :collateral
      

      t.timestamps
    end
  end
end
