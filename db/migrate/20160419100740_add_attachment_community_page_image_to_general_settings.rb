class AddAttachmentCommunityPageImageToGeneralSettings < ActiveRecord::Migration
  def self.up
    change_table :general_settings do |t|
      t.attachment :community_page_image
    end
  end

  def self.down
    remove_attachment :general_settings, :community_page_image
  end
end
