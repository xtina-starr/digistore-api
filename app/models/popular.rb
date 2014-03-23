class Popular < ActiveRecord::Base

  def self.get_popular_songs
    
    response = HTTParty.get("http://api.thisismyjam.com/1/explore/popular.json")
    # response["jams"]
  end
end
