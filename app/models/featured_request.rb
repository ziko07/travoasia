# == Schema Information
#
# Table name: featured_requests
#
#  id          :integer          not null, primary key
#  listing_id  :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class FeaturedRequest < ActiveRecord::Base
  belongs_to :listing
end
