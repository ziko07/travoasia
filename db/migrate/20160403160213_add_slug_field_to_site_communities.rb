class AddSlugFieldToSiteCommunities < ActiveRecord::Migration
  def change
    add_column :site_communities, :slug, :string
    add_index :site_communities, :slug
  end
end
