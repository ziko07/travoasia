class CreateFeaturedRequests < ActiveRecord::Migration
  def change
    create_table :featured_requests do |t|
      t.integer :listings_id
      t.text :description

      t.timestamps null: false
    end
  end
end
