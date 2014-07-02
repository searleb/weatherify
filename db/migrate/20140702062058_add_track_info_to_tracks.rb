class AddTrackInfoToTracks < ActiveRecord::Migration
  def change
  	add_column :tracks, :track_name, :string
  	add_column :tracks, :track_artist, :string
  	add_column :tracks, :track_album, :string 
  end
end
