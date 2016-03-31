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

require 'rails_helper'

RSpec.describe LandingPageImage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
