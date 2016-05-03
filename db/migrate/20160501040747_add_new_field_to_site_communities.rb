class AddNewFieldToSiteCommunities < ActiveRecord::Migration
  def change
    add_column :site_communities, :language, :string
    add_column :site_communities, :travoasia_profile, :string
    add_column :site_communities, :favourite_places , :string
    add_column :site_communities, :drive_guests , :string
    add_column :site_communities, :verification , :string
  end
end
