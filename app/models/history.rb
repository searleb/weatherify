# == Schema Information
#
# Table name: histories
#
#  id              :integer          not null, primary key
#  location        :string(255)
#  user_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#  time            :integer
#  weather_summary :string(255)
#  weather_temp    :string(255)
#

class History < ActiveRecord::Base
	belongs_to :user
	has_many :tracks
end
