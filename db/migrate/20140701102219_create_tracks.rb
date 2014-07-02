class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
    	t.string :spotify_uri
    	t.integer :history_id
    	t.timestamps
    end
  end
end
