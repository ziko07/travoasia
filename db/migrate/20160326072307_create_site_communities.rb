class CreateSiteCommunities < ActiveRecord::Migration
  def change
    create_table :site_communities do |t|
      t.string :name
      t.string :designation
      t.string :address
      t.string :image
      t.text :about

      t.timestamps null: false
    end
  end
end
