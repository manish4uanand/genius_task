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

class LoginDetail < ApplicationRecord
  belongs_to :user

  def self.create_login_detail(user_id, login_time)
  	LoginDetail.create(login_time: login_time, user_id: user_id)
  end

end
