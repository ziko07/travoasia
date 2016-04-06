class AddFacebookUrlTwitterUrlFieldTo < ActiveRecord::Migration
  def change
    add_column :site_communities, :facebook_url, :string
    add_column :site_communities, :twitter_url, :string
  end
end
