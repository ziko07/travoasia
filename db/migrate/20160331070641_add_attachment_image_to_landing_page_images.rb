class AddAttachmentImageToLandingPageImages < ActiveRecord::Migration
  def self.up
    change_table :landing_page_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :landing_page_images, :image
  end
end
