class PagesController < ApplicationController
  def home
  end

  def hamldemo
    @starring = 'Ewoks'
  end

  def location_search
  	
  end

  def location_search_result
  	# raise params.inspect
  	# Get coordinates of user supplied city with Geocoder.
  	@coordinates = Geocoder.coordinates(params[:city])

  	# Set ForecastIO API key.
  	ForecastIO.api_key = '987e8f8deb6c9ec71c3a2300236d5702'
  	# Get weather report from the city coordinates.
  	@weather_report = ForecastIO.forecast(@coordinates.first, @coordinates.last)

  	#Authenticate with Spotify.
  	RSpotify.authenticate('4c8ea9ad02ca42e78b002bcfd4a3659d', 'e93433b0957f40beac4d06c1efd4a077')
  	#Search Spotify with current condition description.
	@tracks = RSpotify::Track.search(@weather_report.currently.summary).select{ |t| t.name.match(/@weather_report.currently.summary/) }, limit = 50, offset = rand(20)  	
	# map tracks to retrieve only the track ID's.
	@spotify_uri_list_full = @tracks.map do |t| 
		t.id
	end
	@spotify_uri_list = @spotify_uri_list_full.sample(20)
  	render :location_search
  end

  	

  def weather_search
  end


  def player
  end

  def test
  end

end
