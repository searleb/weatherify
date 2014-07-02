# == Schema Information
#
# Table name: tracks
#
#  id          :integer          not null, primary key
#  spotify_uri :string(255)
#  history_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Tracks < ActiveRecord::Base
	belongs_to :history
end
