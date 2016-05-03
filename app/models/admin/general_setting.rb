# == Schema Information
#
# Table name: general_settings
#
#  id                                       :integer          not null, primary key
#  community_banner                         :string(255)
#  community_header                         :string(255)
#  community_sub_header                     :string(255)
#  created_at                               :datetime         not null
#  updated_at                               :datetime         not null
#  community_banner_file_name               :string(255)
#  community_banner_content_type            :string(255)
#  community_banner_file_size               :integer
#  community_banner_updated_at              :datetime
#  text_under_countries                     :text(65535)
#  community_page_image                     :string(255)
#  community_page_middle_image              :string(255)
#  community_page_header_text               :string(255)
#  community_page_header_sub_text           :string(255)
#  community_page_middle_text               :string(255)
#  community_page_middle_sub_text           :string(255)
#  community_page_lower_text                :string(255)
#  community_page_lower_sub_text            :string(255)
#  community_page_image_file_name           :string(255)
#  community_page_image_content_type        :string(255)
#  community_page_image_file_size           :integer
#  community_page_image_updated_at          :datetime
#  community_page_middle_image_file_name    :string(255)
#  community_page_middle_image_content_type :string(255)
#  community_page_middle_image_file_size    :integer
#  community_page_middle_image_updated_at   :datetime
#

class Admin::GeneralSetting < ActiveRecord::Base
  DEFAULT_BANNER = ActionController::Base.helpers.asset_path("cover_photos/community/middle_banner.png")
  # attr_accessor :community_banner_file_name, :community_banner_file_size, :community_banner_content_type

  has_attached_file :community_banner, :default_url => DEFAULT_BANNER
  has_attached_file :community_page_image, :default_url => DEFAULT_BANNER
  has_attached_file :community_page_middle_image, :default_url => DEFAULT_BANNER

  #validates_attachment_presence :image
  validates_attachment_size :community_banner, :less_than => 9.megabytes
  validates_attachment_content_type :community_banner,
                                    :content_type => ["image/jpeg", "image/png", "image/gif",
                                                      "image/pjpeg", "image/x-png"] #the two last types are sent by IE.
  validates_attachment_size :community_page_image, :less_than => 9.megabytes
  validates_attachment_content_type :community_page_image,
                                    :content_type => ["image/jpeg", "image/png", "image/gif",
                                                      "image/pjpeg", "image/x-png"] #the two last types are sent by IE.
  validates_attachment_size :community_page_middle_image, :less_than => 9.megabytes
  validates_attachment_content_type :community_page_middle_image,
                                    :content_type => ["image/jpeg", "image/png", "image/gif",
                                                      "image/pjpeg", "image/x-png"] #the two last types are sent by IE.
  # process_in_background :community_banner, :processing_image_url => "/assets/listing_image/processing.png", :priority => 1
  # process_in_background :community_page_image, :processing_image_url => "/assets/listing_image/processing.png", :priority => 1
  # # process_in_background :image, :processing_image_url => "/assets/listing_image/processing.png", :priority => 1
end
