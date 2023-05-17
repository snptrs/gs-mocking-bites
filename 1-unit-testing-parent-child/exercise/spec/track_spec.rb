require 'track'

RSpec.describe Track do
  context "when searching for a track" do
    it "matches when given a keyword in the title" do
      track = Track.new("one MATCHES two", "three four")
      expect(track.matches?("MATCHES")).to eq true
    end

    it "matches when given a keyword in the artist" do
      track = Track.new("one two", "three MATCHES four")
      expect(track.matches?("MATCHES")).to eq true
    end

    it "doesn't match when the keyword isn't in title or artist" do
      track = Track.new("one two", "three four")
      expect(track.matches?("MATCHES")).to eq false
    end
  end
end
