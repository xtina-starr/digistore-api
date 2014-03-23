class Popular
  attr_accessor :jams

  def initialize
    get_popular_songs
  end

  def get_popular_songs
    recent_songs = Product.where("popular_at > ?", 1.day.ago)
    if recent_songs.count < 3
      response = HTTParty.get("http://api.thisismyjam.com/1/explore/popular.json")
      # response["jams"]
      @jams = response["jams"][0..2]
      @jams = @jams.map do |jam|
        Product.create(
          title: jam["title"],
          artist: jam["artist"],
          image: jam["jamvatarMedium"],
          popular_at: Time.now,
          price: 199
          )
      end
    end
  end

end
