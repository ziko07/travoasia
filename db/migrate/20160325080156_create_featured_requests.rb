class CreateFeaturedRequests < ActiveRecord::Migration
  def change
    create_table :featured_requests do |t|
      t.string :listing_id
      t.text :description

      t.timestamps null: false
    end
  end
end
