class AddIsFeaturedFieldToListings < ActiveRecord::Migration
  def change
    add_column :listings, :is_featured, :boolean
  end
end
