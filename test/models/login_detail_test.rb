# == Schema Information
#
# Table name: login_details
#
#  id         :integer          not null, primary key
#  login_time :datetime
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LoginDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
