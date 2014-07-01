# == Schema Information
#
# Table name: histories
#
#  id         :integer          not null, primary key
#  location   :string(255)
#  weather    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class History < ActiveRecord::Base
	belongs_to :user
	has_many :tracks_histories
end
