# == Schema Information
#
# Table name: reschedule_requests
#
#  id             :integer          not null, primary key
#  transaction_id :integer
#  start_on       :date
#  end_on         :date
#  reason         :string(255)
#  status         :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class RescheduleRequest < ActiveRecord::Base
end
