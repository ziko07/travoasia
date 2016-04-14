# == Schema Information
#
# Table name: general_settings
#
#  id                   :integer          not null, primary key
#  community_banner     :string(255)
#  community_header     :string(255)
#  community_sub_header :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Admin::GeneralSetting < ActiveRecord::Base
  DEFAULT_BANNER = ActionController::Base.helpers.asset_path("cover_photos/community/middle_banner.png")
  attr_accessor :community_banner_file_name, :community_banner_file_size, :community_banner_content_type

  has_attached_file :community_banner, :default_url => DEFAULT_BANNER

  #validates_attachment_presence :image
  validates_attachment_size :community_banner, :less_than => 9.megabytes
  validates_attachment_content_type :community_banner,
                                    :content_type => ["image/jpeg", "image/png", "image/gif",
                                                      "image/pjpeg", "image/x-png"] #the two last types are sent by IE.
end
