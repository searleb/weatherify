# == Schema Information
#
# Table name: tracks_histories
#
#  id          :integer          not null, primary key
#  spotify_uri :string(255)
#  history_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class TracksHistory < ActiveRecord::Base
	belongs_to :histories
end
