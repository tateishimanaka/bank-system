class CreateUseOfFunds < ActiveRecord::Migration[5.2]
  def change
    create_table :use_of_funds do |t|
      
      t.string :use_of_fund
      t.timestamps
    end
  end
end
