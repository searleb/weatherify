class ChangeTracks < ActiveRecord::Migration
  def change
  	change_table :tracks do |t|
  		t.string :spotify_image
  	end
  end
end
