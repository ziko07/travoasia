# == Schema Information
#
# Table name: site_communities
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  designation        :string(255)
#  address            :string(255)
#  image              :string(255)
#  about              :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  slug               :string(255)
#  facebook_url       :string(255)
#  twitter_url        :string(255)
#
# Indexes
#
#  index_site_communities_on_slug  (slug)
#

class Admin::SiteCommunity < ActiveRecord::Base

  has_attached_file :image

  extend FriendlyId
  friendly_id :name, use: :slugged

  # process_in_background :image

  #validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 9.megabytes
  validates_attachment_content_type :image,
                                    :content_type => ["image/jpeg", "image/png", "image/gif",
                                                      "image/pjpeg", "image/x-png"] #the two last types are sent by IE.

  def should_generate_new_friendly_id?
    new_record?
  end
end
