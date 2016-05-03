class AddMutualDateFieldToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :mutual_date, :date
  end
end
