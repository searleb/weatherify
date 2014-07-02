# == Schema Information
#
# Table name: tracks
#
#  id            :integer          not null, primary key
#  spotify_uri   :string(255)
#  history_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#  spotify_image :string(255)
#  track_name    :string(255)
#  track_artist  :string(255)
#  track_album   :string(255)
#

class Track < ActiveRecord::Base
	belongs_to :history
end
