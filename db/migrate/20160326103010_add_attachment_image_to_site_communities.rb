class AddAttachmentImageToSiteCommunities < ActiveRecord::Migration
  def self.up
    change_table :site_communities do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :site_communities, :image
  end
end
