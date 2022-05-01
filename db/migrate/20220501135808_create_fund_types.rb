class CreateFundTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :fund_types do |t|
      
      t.string :fund_type
      
      t.timestamps
    end
  end
end
