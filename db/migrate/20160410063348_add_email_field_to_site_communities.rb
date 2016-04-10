class AddEmailFieldToSiteCommunities < ActiveRecord::Migration
  def change
    add_column :site_communities, :email, :string
  end
end
