class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) # track is an instance of Track
    @tracks << track
    binding.irb
  end

  def all
    @tracks
  end
  
  def search(keyword) # keyword is a string
    @tracks.map(&:match?(keyword))
  end
end
