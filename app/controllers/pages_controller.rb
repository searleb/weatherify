class PagesController < ApplicationController

 before_action :check_if_logged_in, :except => [:home]

 def home
 end

 def location_search
 end

 def location_search_result
  	# Get coordinates of user supplied city with Geocoder.
    @coordinates = Geocoder.coordinates(params[:city])

  	# Get weather report from the city coordinates.
    @weather_report = ForecastIO.forecast(@coordinates.first, @coordinates.last)

  	#Search Spotify with current condition description.
    @tracks = RSpotify::Track.search(@weather_report.currently.summary.gsub("Mostly", "").gsub('Partly',""), limit = 50, offset = rand(20))  	
    @tracks = @tracks.sample(20)

      # map tracks to retrieve only the track ID's.
      @spotify_uri_list = @tracks.map do |t| 
       t.id
     end
  
       # returns url links to each album artwork
       @track_images = @tracks.map do |t|
        t.album.images[1]['url']
      end
      
     # Define varibles for saving history and player page display
     @weather_time = @weather_report.currently.time
     @weather_summary = @weather_report.currently.summary
     @weather_temp = @weather_report.currently.temperature
     @geo_location = Geocoder.search(params[:city])
     @geo_location = @geo_location[0].data['formatted_address']


     render :player
  end

   def player
   end

   private
   def check_if_logged_in
    redirect_to(new_user_path) if @current_user.nil?
  end

end
