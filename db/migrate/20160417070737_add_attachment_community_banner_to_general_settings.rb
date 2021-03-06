class AddAttachmentCommunityBannerToGeneralSettings < ActiveRecord::Migration
  def self.up
    change_table :general_settings do |t|
      t.attachment :community_banner
    end
  end

  def self.down
    remove_attachment :general_settings, :community_banner
  end
end
