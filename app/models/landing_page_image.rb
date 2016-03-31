# == Schema Information
#
# Table name: landing_page_images
#
#  id                 :integer          not null, primary key
#  city               :string(255)
#  image              :string(255)
#  position           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class LandingPageImage < ActiveRecord::Base

  has_attached_file :image

  # process_in_background :image

  #validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 9.megabytes
  validates_attachment_content_type :image,
                                    :content_type => ["image/jpeg", "image/png", "image/gif",
                                                      "image/pjpeg", "image/x-png"] #the two last types are sent by IE
end
