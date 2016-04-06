class CreateRescheduleRequests < ActiveRecord::Migration
  def change
    create_table :reschedule_requests do |t|
      t.integer :transaction_id
      t.date :start_on
      t.date :end_on
      t.string :reason
      t.string :status

      t.timestamps null: false
    end
  end
end
